---
name: full-project-architecture
description: Use after product scope is approved and before implementation for complete projects, multi-module apps, SaaS, APIs, dashboards, automations, or systems needing stack, module boundaries, data flow, security, testing, performance, and deployment decisions.
---

# Full Project Architecture

Use this to turn approved product scope into a technical blueprint.

## Hard Gates

- Do not write an implementation plan until architecture is approved.
- Do not choose new technology when the existing repo already has a clear stack unless there is a concrete reason.
- Do not design modules without owners, responsibilities, and interfaces.
- Do not skip auth, data, error, testing, security, performance, and release implications.

## Required Inputs

- Approved product brief or feature scope
- Current repository structure and stack
- Deployment/runtime expectations
- Data/auth requirements, if known
- External integrations, if any

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
3. Define module boundaries:
   - responsibility
   - public interface
   - dependencies
   - files/directories
4. Trace the primary workflows through modules.
5. Define state, persistence, caching, and data ownership.
6. Define auth and permission boundaries.
7. Define error handling, retries, background work, and failure behavior.
8. Identify security, testing, performance, observability, and release implications.
9. Propose alternatives only when there is a real tradeoff.
10. Get architecture approval.

## Required Output

- Architecture summary
- Module map
- Primary workflow data flow
- Key interfaces/contracts
- State and persistence strategy
- Auth/permissions model
- Error and failure model
- Testing strategy hooks
- Performance assumptions
- Observability and release notes
- Risks and tradeoffs
- Follow-up skills to run

## Quality Bar

Every module must answer: what it owns, how it is used, what it depends on, and how it fails.

## Red Flags

- Architecture by framework fashion instead of product needs.
- Shared utilities becoming dumping grounds.
- Backend endpoints without clear consumers.
- Database schema before domain boundaries are clear.
- No plan for auth, errors, tests, performance, observability, or deployment.
- "We can add that later" for security-critical design.
