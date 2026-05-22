---
name: security-threat-modeling
description: Use before implementing auth, payments, uploads, admin features, public APIs, data storage, integrations, multi-tenant systems, or anything handling private data; identifies assets, attackers, abuse cases, and mitigations.
---

# Security Threat Modeling

Use before implementation when security risk is material.

## Process

1. Identify assets:
   - user accounts
   - private data
   - money/payment actions
   - admin actions
   - tokens/secrets
   - infrastructure access
2. Identify actors:
   - anonymous user
   - authenticated user
   - tenant member
   - admin
   - external service
   - malicious insider
3. Map trust boundaries and entry points.
4. List realistic abuse cases.
5. Define mitigations in design, not afterthoughts.
6. Identify logging/monitoring needs without exposing sensitive data.
7. Decide what must be tested.

## Output

- Asset table
- Actor/permission table
- Attack surface
- Abuse cases
- Required mitigations
- Security tests
- Residual risks

## Minimum Checks

- Authentication and authorization are separate.
- Every privileged action has an authorization rule.
- Inputs crossing trust boundaries are validated.
- File uploads have type, size, storage, and execution constraints.
- Secrets are never exposed to client code or logs.
- Tenant/user boundaries are enforced server-side.

## Red Flags

- "Only admins will see this" without enforcement.
- Client-side authorization only.
- Public route that mutates state without abuse controls.
- Logs containing tokens or private data.
- Uploads stored in executable/public paths without controls.
