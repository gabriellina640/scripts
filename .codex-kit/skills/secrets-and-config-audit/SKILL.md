---
name: secrets-and-config-audit
description: Use when adding config, env vars, deployment settings, SDK keys, tokens, CI secrets, .env examples, logging, or before release; audits secret handling, exposure risk, config defaults, and environment separation.
---

# Secrets and Config Audit

Use before commits, release, or deploy when config or secrets are involved.

## Process

1. Inspect tracked config files:
   - `.env*`
   - examples
   - CI workflows
   - deployment config
   - frontend config
   - logging setup
2. Check gitignore coverage for secrets.
3. Search for likely secret patterns when appropriate.
4. Verify public vs private env vars.
5. Confirm logs and errors do not print secrets.
6. Confirm documentation uses placeholders, not real values.
7. Confirm rotation or revocation steps if exposure is found.

## Output

- Files checked
- Secret exposure findings
- Config correctness findings
- Required fixes
- Rotation/revocation note if needed

## Minimum Rules

- `.env`, private keys, tokens, and certificates are never committed.
- Public frontend env vars must be intentionally public.
- Example env files use safe placeholders.
- CI/deploy secrets are referenced by secret managers, not hardcoded.
- Logs must not include tokens, passwords, cookies, private keys, or full auth headers.

## Red Flags

- `NEXT_PUBLIC_`, `VITE_`, or similar prefix used accidentally.
- Debug logging full request headers.
- Base64 blobs in config without explanation.
- Real-looking credentials in docs or examples.
- `.env.example` copied from production.
