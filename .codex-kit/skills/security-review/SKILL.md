---
name: security-review
description: Use before merging or releasing features with auth, user data, payments, uploads, APIs, admin tools, configuration, or deployment changes; performs practical security review with findings by severity.
---

# Security Review

Use after implementation and before final completion for security-relevant changes.

## Review Inputs

- Diff or changed files
- Approved design/plan
- Auth model
- Environment/deployment context
- Tests and verification run

## Review Areas

### Auth and Authorization
- Privileged paths enforce server-side authorization.
- User and tenant boundaries are checked on every access.
- Session/token handling matches framework expectations.

### Input and Output
- Inputs are validated at trust boundaries.
- Errors do not leak internals.
- Output is encoded or escaped appropriately.

### Data Protection
- Sensitive fields are minimized.
- Logs avoid secrets and personal data.
- Retention/deletion behavior is intentional.

### Abuse Resistance
- Rate limits, idempotency, CSRF/CORS, replay and upload constraints are addressed where relevant.

### Dependencies and Config
- New dependencies are justified.
- Secrets are not hardcoded or exposed to frontend bundles.

## Output

Findings first:

- Critical: exploitable data loss, auth bypass, secret exposure, destructive action.
- Important: plausible vulnerability or missing control.
- Minor: hardening or clarity issue.

Include file/line references when possible, then give a merge/release verdict.

## Red Flags

- Treating tests passing as security approval.
- Assuming framework defaults without checking.
- Reviewing only happy paths.
- Ignoring deployment config.
