---
name: full-project-architecture
description: Use after product scope is approved and before implementation for complete projects, multi-module apps, SaaS, APIs, dashboards, automations, or systems needing stack, boundaries, data flow, security, testing, and deployment decisions.
---

# Full Project Architecture

Use this to turn approved product scope into a technical blueprint.

## Hard Gate

Do not write an implementation plan until architecture is approved.

## Process

1. Inspect existing codebase, dependencies, conventions, and deployment hints.
2. Identify system shape:
   - frontend
   - backend
   - database
   - external services
   - jobs/queues
   - auth
   - admin/internal surfaces
3. Define module boundaries and responsibilities.
4. Define data flow for the primary workflows.
5. Choose stack only where not already decided by the repo.
6. Identify security, performance, testing, and release implications.
7. Propose 2 architecture options when meaningful:
   - pragmatic default
   - simpler constrained option
   - scalable option
8. Get approval.

## Output

- Architecture summary
- Module map
- Data flow
- Key interfaces
- State and persistence strategy
- Auth/permissions model
- Error handling model
- Testing strategy hooks
- Deployment/runtime assumptions
- Risks and tradeoffs
- Follow-up skills to run

## Red Flags

- Architecture by framework fashion instead of product needs.
- Shared utilities becoming dumping grounds.
- Backend endpoints without clear consumers.
- Database schema before domain boundaries are clear.
- No plan for auth, errors, tests, or deployment.
