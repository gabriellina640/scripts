---
name: security-threat-modeling
description: Use before implementing auth, payments, uploads, admin features, public APIs, data storage, integrations, multi-tenant systems, or anything handling private data; identifies assets, actors, trust boundaries, abuse cases, mitigations, tests, and residual risks.
---

# Security Threat Modeling

Use before implementation when security risk is material.

## Hard Gates

- Do not implement sensitive features until trust boundaries and permission rules are explicit.
- Do not treat authentication as authorization.
- Do not defer mitigations for known high-risk flows.
- Do not allow client-side checks to be the only protection.

## Required Inputs

- Product/feature scope
- Data handled
- Actors and roles
- Entry points
- Auth/session model, if known
- External services and storage locations

## Process

1. Identify assets:
   - user accounts
   - private data
   - money/payment actions
   - admin actions
   - tokens/secrets
   - infrastructure access
   - tenant boundaries
2. Identify actors:
   - anonymous user
   - authenticated user
   - tenant member
   - admin
   - external service
   - malicious insider
3. Map trust boundaries and entry points.
4. List realistic abuse cases:
   - unauthorized read/write
   - privilege escalation
   - data exfiltration
   - replay/retry abuse
   - file/upload abuse
   - resource exhaustion
   - unsafe third-party callback
5. Define mitigations in design.
6. Define security tests.
7. Identify logging/monitoring needs without exposing sensitive data.
8. Record residual risks and owner decisions.

## Required Output

- Asset table
- Actor/permission table
- Trust-boundary map
- Attack surface
- Abuse cases
- Required mitigations
- Security tests
- Monitoring/logging notes
- Residual risks

## Reference Lens

Use OWASP ASVS and OWASP Top 10 categories as a baseline: access control, cryptographic failures, injection, insecure design, misconfiguration, vulnerable dependencies, authentication failures, integrity failures, logging/monitoring failures, and SSRF.

For APIs, also use OWASP API Security Top 10.

## Minimum Checks

- Every privileged action has a server-side authorization rule.
- Inputs crossing trust boundaries are validated.
- File uploads have type, size, storage, scan, and execution constraints.
- Secrets are never exposed to client code or logs.
- Tenant/user boundaries are enforced server-side.
- Sensitive operations have auditability where needed.

## Red Flags

- "Only admins will see this" without enforcement.
- Client-side authorization only.
- Public route that mutates state without abuse controls.
- Logs containing tokens or private data.
- Uploads stored in executable/public paths without controls.
- Multi-tenant data access without object ownership checks.
