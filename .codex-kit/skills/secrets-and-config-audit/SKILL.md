---
name: secrets-and-config-audit
description: Use when adding config, env vars, deployment settings, SDK keys, tokens, CI secrets, .env examples, logging, or before release; audits secret handling, exposure risk, config defaults, public/private boundaries, and rotation needs.
---

# Secrets and Config Audit

Use before commits, release, or deploy when config or secrets are involved.

## Hard Gates

- Do not approve real secrets in tracked files.
- Do not approve private keys/tokens in frontend-public env vars.
- Do not approve logs that print auth headers, cookies, tokens, passwords, private keys, or full secret objects.
- If a secret was exposed, require rotation/revocation guidance.

## Process

1. Inspect tracked config files:
   - `.env*`
   - examples
   - CI workflows
   - deployment config
   - frontend config
   - logging setup
2. Check `.gitignore` coverage for secrets.
3. Search for likely secret patterns when appropriate.
4. Verify public vs private env vars.
5. Confirm docs use placeholders, not real values.
6. Confirm logs and errors do not print secrets.
7. Confirm default config is safe for development and production.
8. Confirm rotation or revocation steps if exposure is found.

## Required Output

- Files checked
- Secret exposure findings
- Public/private env boundary findings
- Config default findings
- Logging findings
- Required fixes
- Rotation/revocation note if needed

## Minimum Rules

- `.env`, private keys, tokens, certificates, and credentials are never committed.
- Public frontend env vars must be intentionally public.
- Example env files use safe placeholders.
- CI/deploy secrets are referenced by secret managers, not hardcoded.
- Logs must not include tokens, passwords, cookies, private keys, or full auth headers.
- Production defaults must fail closed, not open.

## Reference Lens

Use OWASP Secrets Management Cheat Sheet principles: separate secrets from code, restrict access, rotate exposed secrets, audit access, and prefer managed secret stores where available.

## Red Flags

- `NEXT_PUBLIC_`, `VITE_`, or similar prefix used accidentally.
- Debug logging full request headers.
- Base64 blobs in config without explanation.
- Real-looking credentials in docs or examples.
- `.env.example` copied from production.
- Feature flags defaulting unsafe behavior on.
