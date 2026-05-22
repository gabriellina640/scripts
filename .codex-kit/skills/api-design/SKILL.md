---
name: api-design
description: Use before implementing APIs, webhooks, integrations, backend routes, SDKs, or service contracts; defines endpoints, schemas, validation, errors, auth, pagination, idempotency, versioning, and compatibility.
---

# API Design

Use this before backend implementation or integration work.

## Required Context

- Consumer: browser, mobile, external partner, internal service, CLI, webhook.
- Trust boundary and auth model.
- Data model or domain objects.

## Process

1. List consumers and their workflows.
2. Define resources and operations.
3. Specify request/response schemas.
4. Specify validation and canonical error format.
5. Decide auth, authorization, rate limits, and abuse controls.
6. Decide pagination, filtering, sorting, and idempotency where needed.
7. Define versioning and backwards compatibility policy.
8. Identify tests and contract checks.

## Output

- Endpoint table
- Request/response examples
- Error model
- Auth and permission rules
- Validation rules
- Idempotency/rate-limit rules
- Compatibility notes
- Test cases

## Red Flags

- Endpoint exists because it is easy, not because a consumer needs it.
- Authorization implied but not specified.
- Raw database errors exposed.
- Non-idempotent payment, email, webhook, or mutation path.
- No behavior for empty, invalid, unauthorized, or partial states.
