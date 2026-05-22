---
name: database-design
description: Use before creating or changing persistent data models, migrations, schemas, indexes, constraints, analytics tables, or storage rules; designs data for correctness, privacy, performance, migration safety, and future evolution.
---

# Database Design

Use before migrations or persistence code.

## Hard Gates

- Do not create migrations until entity ownership and lifecycle are clear.
- Do not rely on UI-only business rules for data integrity.
- Do not store sensitive data without a reason, retention expectation, and access rule.
- Do not add indexes without query paths.

## Required Inputs

- Product workflow and domain terms
- Existing schema or storage model
- Access patterns and expected filters
- Sensitive data categories
- Migration/deploy constraints

## Process

1. Identify domain entities and lifecycle.
2. Decide source of truth for each entity.
3. Define relationships and ownership.
4. Specify constraints:
   - required/nullable fields
   - unique rules
   - foreign keys
   - delete behavior
   - invariants
5. Identify sensitive fields, retention, masking, and access rules.
6. Define indexes from real query paths.
7. Plan migrations:
   - create/alter steps
   - backfill
   - compatibility window
   - rollback
8. Define seed/test data needs.
9. Identify database-level tests or migration checks.

## Required Output

- Entity list
- Schema sketch
- Relationship rules
- Constraints and indexes
- Sensitive-data notes
- Query path table
- Migration plan
- Rollback/backfill plan
- Seed/test data plan
- Risks and follow-up checks

## Quality Bar

The schema should protect data integrity even when a caller bypasses the UI.

## Red Flags

- Nullable fields without meaning.
- Soft delete without query discipline.
- Indexes guessed without query paths.
- Sensitive data stored unnecessarily.
- Migration with no rollback or backfill plan.
- Business rules enforced only in frontend code.
