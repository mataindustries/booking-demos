#!/usr/bin/env python3
import argparse
import json
import os
import re
import sys
import tempfile

PLACEHOLDER_RE = re.compile(r"\{\{\s*([A-Z0-9_]+)\s*\}\}")

def eprint(*args):
  print(*args, file=sys.stderr)

def main():
  ap = argparse.ArgumentParser(description="Render quote page template from lead JSON")
  ap.add_argument("--template", default="templates/quote-page-v1/index.html.tpl",
                  help="Path to template .tpl file")
  ap.add_argument("--data", required=True, help="Path to lead/client JSON")
  ap.add_argument("--out", default=None, help="Output path (default: ./<slug>/index.html)")
  ap.add_argument("--force", action="store_true",
                  help="Render even if status is not 'ready'")
  args = ap.parse_args()

  if not os.path.isfile(args.template):
    eprint(f"ERROR: Missing template: {args.template}")
    sys.exit(1)
  if not os.path.isfile(args.data):
    eprint(f"ERROR: Missing data JSON: {args.data}")
    sys.exit(1)

  with open(args.data, "r", encoding="utf-8") as f:
    data = json.load(f)

  status = str(data.get("status", "")).strip().lower()
  if (not args.force) and status and status != "ready":
    eprint(f"SKIP: {os.path.basename(args.data)} status='{status}' (use --force to render anyway)")
    return 0

  slug = os.path.splitext(os.path.basename(args.data))[0]
  out_path = args.out or os.path.join(slug, "index.html")

  with open(args.template, "r", encoding="utf-8") as f:
    tpl = f.read()

  missing = set()

  def repl(match):
    key = match.group(1)
    if key not in data:
      missing.add(key)
      return ""
    val = data.get(key)
    if val is None:
      return ""
    return str(val)

  rendered = PLACEHOLDER_RE.sub(repl, tpl)

  unresolved = sorted(set(PLACEHOLDER_RE.findall(rendered)))
  if missing:
    eprint(f"WARN: Missing keys in {os.path.basename(args.data)} -> {', '.join(sorted(missing))}")
  if unresolved:
    eprint(f"WARN: Unresolved placeholders remain -> {', '.join(unresolved)}")

  os.makedirs(os.path.dirname(out_path) or ".", exist_ok=True)

  # Atomic write
  out_dir = os.path.dirname(out_path) or "."
  fd, tmp_path = tempfile.mkstemp(prefix=".render-", suffix=".tmp", dir=out_dir)
  try:
    with os.fdopen(fd, "w", encoding="utf-8") as f:
      f.write(rendered)
    os.replace(tmp_path, out_path)
  finally:
    try:
      if os.path.exists(tmp_path):
        os.remove(tmp_path)
    except Exception:
      pass

  print(f"OK: {args.data} -> {out_path}")
  return 0

if __name__ == "__main__":
  raise SystemExit(main())
