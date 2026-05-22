---
name: product-discovery
description: Use before building a new product, feature, MVP, SaaS, app, landing page, workflow, or unclear idea; turns vague intent into an approved product brief with user, job, scope, value, constraints, risks, non-goals, and success criteria.
---

# Product Discovery

Use this before architecture, UI, planning, or implementation when the request is product-shaped and ambiguous.

## Hard Gates

- Do not propose architecture until the product brief is approved.
- Do not create implementation tasks until MVP scope and non-goals are explicit.
- Do not accept "everyone" as the target user.
- Do not accept a feature list without a primary workflow.

## Required Inputs

- Product or feature idea
- Intended user or buyer
- Main problem or opportunity
- Desired outcome
- Constraints: time, stack, budget, data, integrations, platform

Ask one concise question at a time when these are missing.

## Process

1. Inspect project context: `README.md`, `AGENTS.md`, current app files, recent git history.
2. Classify the product shape:
   - internal tool
   - SaaS
   - marketplace
   - content site
   - automation
   - mobile app
   - API
   - game
   - landing page
3. Define the user and job-to-be-done.
4. Define the primary workflow from first intent to success.
5. Separate must-have, should-have, and explicitly-not-now.
6. Identify assumptions that must be true.
7. Propose exactly 3 scopes:
   - recommended MVP
   - smaller validation cut
   - ambitious version
8. Recommend one scope and get approval.

## Required Output

- Product name or working title
- Target user
- Problem
- Core promise
- Primary workflow
- MVP scope
- Non-goals
- Differentiation
- Constraints
- Assumptions
- Risks
- Success criteria
- Next skill to use

## Quality Bar

The brief must let another engineer design architecture and UI without guessing the product intent.

## Red Flags

- "Users can do everything" as a scope.
- No clear first workflow.
- Success criteria that cannot be observed.
- Differentiation based only on "modern", "simple", "fast", or "beautiful".
- Building a complete platform before proving one valuable workflow.
