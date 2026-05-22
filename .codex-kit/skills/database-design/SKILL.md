---
name: database-design
description: Use before creating or changing persistent data models, migrations, schemas, indexes, constraints, analytics tables, or storage rules; designs data for correctness, privacy, performance, and evolution.
---

# Database Design

Use before migrations or persistence code.

## Process

1. Identify domain entities and lifecycle.
2. Decide source of truth for each entity.
3. Define relationships and ownership.
4. Specify constraints, unique rules, nullability, and delete behavior.
5. Identify sensitive fields and retention requirements.
6. Add indexes based on real query paths.
7. Plan migrations and rollback.
8. Define seed/test data needs.

## Output

- Entity list
- Schema sketch
- Relationship rules
- Constraints and indexes
- Privacy/sensitive-data notes
- Migration plan
- Rollback plan
- Query paths to test

## Red Flags

- Nullable fields without meaning.
- Soft delete without query discipline.
- Indexes guessed without query paths.
- Sensitive data stored unnecessarily.
- Migration with no rollback or backfill plan.
- Business rules enforced only in UI.
