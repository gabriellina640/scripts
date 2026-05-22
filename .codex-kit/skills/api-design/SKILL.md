---
name: api-design
description: Use before implementing APIs, webhooks, integrations, backend routes, SDKs, or service contracts; defines consumers, endpoints, schemas, validation, errors, auth, authorization, pagination, idempotency, versioning, observability, and compatibility.
---

# API Design

Use this before backend implementation or integration work.

## Hard Gates

- Do not implement routes until consumers and permission rules are known.
- Do not expose raw database shapes as the public contract by accident.
- Do not design mutations without error, authorization, and idempotency behavior where relevant.
- Do not let frontend convenience override security or contract clarity.

## Required Context

- Consumer: browser, mobile, external partner, internal service, CLI, webhook.
- Trust boundary and auth model.
- Domain/data model.
- Critical workflows.
- Expected volume or rate constraints, if known.

## Process

1. List consumers and workflows.
2. Define resources and operations.
3. Specify request and response schemas.
4. Specify validation and canonical error format.
5. Define authentication and authorization separately.
6. Decide pagination, filtering, sorting, and partial response behavior.
7. Define idempotency for payments, emails, webhooks, retries, imports, and destructive mutations.
8. Define rate limits and abuse controls for public or high-risk endpoints.
9. Define versioning and backwards compatibility.
10. Define logging/metrics without sensitive data.
11. Identify contract, integration, and negative tests.

## Required Output

- Consumer/workflow table
- Endpoint table
- Request/response examples
- Error model
- Auth and permission rules
- Validation rules
- Pagination/filter/sort rules
- Idempotency and retry rules
- Rate-limit/abuse rules
- Compatibility notes
- Observability notes
- Test cases

## Security Baseline

Use OWASP API Security Top 10 themes as a review lens: object-level authorization, authentication, object property authorization, unrestricted resource consumption, function-level authorization, sensitive business flows, SSRF, misconfiguration, inventory management, and unsafe consumption of external APIs.

## Red Flags

- Endpoint exists because it is easy, not because a consumer needs it.
- Authorization implied but not specified.
- Object IDs accepted without ownership checks.
- Raw database errors exposed.
- Non-idempotent payment, email, webhook, import, or mutation path.
- No behavior for empty, invalid, unauthorized, forbidden, conflict, or partial states.
