# booking-demos — Codex instructions

Goal: Generate service-business quote pages from a single template + JSON data.

Rules:
- Master template lives in /templates/quote-page-v1/index.html.tpl
- Client/lead data lives in /data (never hardcode client info in the template)
- Generated output must be written to /<slug>/index.html (URL stability)
- Shared styles only in /assets (do not duplicate CSS per slug)
- If a logo/hero is added later, store it in /assets/clients/<slug>/ and reference it from client JSON

Workflow:
1) Add a lead to /data/leads.ndjson with status="ready"
2) Run ./scripts/gen-batch.sh (or gen-one.sh <slug>)
3) After purchase: run ./scripts/promote.sh <slug> and update brand assets if requested
