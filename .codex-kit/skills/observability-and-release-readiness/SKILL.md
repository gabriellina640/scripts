---
name: observability-and-release-readiness
description: Use before shipping a complete feature or product; checks logs, errors, metrics, health, deploy config, migrations, rollback, smoke tests, documentation, operational risks, and release verdict.
---

# Observability and Release Readiness

Use after implementation, tests, security review, and performance review for releasable work.

## Hard Gates

- Do not release if rollback is unknown for risky changes.
- Do not release if required env vars are undocumented.
- Do not release if critical errors are swallowed silently.
- Do not release if migrations can break existing running code without a compatibility plan.
- Do not release if smoke verification is missing for the primary workflow.

## Required Inputs

- Implemented change summary
- Deployment target
- Env/config changes
- Database migrations
- Test and review evidence
- Primary smoke workflow

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
   - trace/correlation ID where relevant
3. Verify deploy safety:
   - migrations are ordered and reversible where possible
   - env vars are documented
   - rollback path exists
   - feature flags are safe
   - smoke test exists
4. Verify user-facing readiness:
   - empty/error/loading states
   - permissions
   - support/debug info
   - docs or runbook when needed
5. Record residual risks and release verdict.

## Required Output

- Release checklist
- Commands run
- Config/env checklist
- Migration/rollback notes
- Smoke test plan
- Observability notes
- User-facing readiness notes
- Residual risks
- Release verdict

## Verdicts

- Blocked: must fix before release.
- Release with known risks: risks documented and accepted.
- Ready to release: evidence supports release.

## Red Flags

- No rollback path for risky migration.
- New env vars not documented.
- Errors swallowed silently.
- Logs too noisy to debug real incidents.
- Release depends on manual steps not written down.
- Smoke test does not cover the primary workflow.
