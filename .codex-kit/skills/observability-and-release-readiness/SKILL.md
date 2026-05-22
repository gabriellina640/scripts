---
name: observability-and-release-readiness
description: Use before shipping a complete feature or product; checks logs, errors, metrics, health, deploy config, migrations, rollback, smoke tests, documentation, and operational risks.
---

# Observability and Release Readiness

Use after implementation, tests, security review, and performance review for releasable work.

## Process

1. Identify release surface:
   - frontend
   - backend
   - database
   - jobs
   - third-party integrations
   - config
2. Verify observability:
   - actionable errors
   - useful logs without sensitive data
   - metrics or events for critical actions
   - health checks where applicable
3. Verify deploy safety:
   - migrations are ordered and reversible where possible
   - env vars are documented
   - rollback path exists
   - smoke test exists
4. Verify user-facing readiness:
   - empty/error/loading states
   - permissions
   - support/debug info
   - docs or runbook when needed

## Output

- Release checklist
- Commands run
- Config/env checklist
- Migration/rollback notes
- Smoke test plan
- Residual risks
- Release verdict

## Red Flags

- No rollback path for risky migration.
- New env vars not documented.
- Errors swallowed silently.
- Logs too noisy to debug real incidents.
- Release depends on manual steps not written down.
