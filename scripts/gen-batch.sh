#!/usr/bin/env bash
set -euo pipefail

TPL="templates/quote-page-v1/index.html.tpl"
LEADS_DIR="data/leads"

if [[ ! -f "$TPL" ]]; then
  echo "ERROR: Missing template: $TPL" >&2
  exit 1
fi

if [[ ! -d "$LEADS_DIR" ]]; then
  echo "ERROR: Missing leads dir: $LEADS_DIR" >&2
  exit 1
fi

count=0
skipped=0

shopt -s nullglob
for f in "$LEADS_DIR"/*.json; do
  slug="$(basename "$f" .json)"
  # render.py will skip if status != ready (unless you pass --force)
  if python3 scripts/render.py --template "$TPL" --data "$f" --out "$slug/index.html"; then
    ((count++))
  else
    ((skipped++))
  fi
done

echo "Done. Rendered: $count  Skipped/Errors: $skipped"
