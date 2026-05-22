---
name: security-review
description: Use before merging or releasing features with auth, user data, payments, uploads, APIs, admin tools, configuration, dependencies, or deployment changes; performs practical security review with findings by severity.
---

# Security Review

Use after implementation and before final completion for security-relevant changes.

## Hard Gates

- Do not approve if authorization is unclear.
- Do not approve if secrets can reach source control, client bundles, logs, or screenshots.
- Do not approve if sensitive data access lacks server-side ownership checks.
- Do not approve if a high-risk flow has no negative test or manual verification.

## Review Inputs

- Diff or changed files
- Approved design/plan
- Threat model, if one exists
- Auth model
- Environment/deployment context
- Tests and verification run

## Review Areas

### Auth and Authorization
- Privileged paths enforce server-side authorization.
- User and tenant boundaries are checked on every access.
- Session/token handling matches framework expectations.
- Role and ownership checks are separate and explicit.

### Input and Output
- Inputs are validated at trust boundaries.
- Errors do not leak internals.
- Output is encoded or escaped appropriately.
- File uploads are constrained and safe.

### Data Protection
- Sensitive fields are minimized.
- Logs avoid secrets and personal data.
- Retention/deletion behavior is intentional.
- Client bundles do not include private config.

### API and Abuse Resistance
- Rate limits, idempotency, CSRF/CORS, replay controls, SSRF controls, and upload constraints are addressed where relevant.
- Public endpoints cannot enumerate or mutate resources across boundaries.

### Dependencies and Config
- New dependencies are justified.
- Known risky packages are avoided or isolated.
- Security headers, cookie flags, and deploy config are appropriate for the stack.

## Required Output

Findings first:

- Critical: exploitable data loss, auth bypass, secret exposure, destructive action.
- Important: plausible vulnerability, missing control, or weak verification.
- Minor: hardening or clarity issue.

For each finding include:

- file/line when possible
- exploit or failure scenario
- required fix
- verification needed

Then give a verdict:

- Blocked
- Approved after listed fixes
- Approved

## Reference Lens

Use OWASP ASVS, OWASP Top 10, OWASP API Security Top 10, and relevant OWASP Cheat Sheets as baseline review references.

## Red Flags

- Treating tests passing as security approval.
- Assuming framework defaults without checking.
- Reviewing only happy paths.
- Ignoring deployment config.
- No negative tests for auth/permission boundaries.
