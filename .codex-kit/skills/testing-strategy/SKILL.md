---
name: testing-strategy
description: Use when a project or feature needs a complete test plan; defines risk-based unit, integration, contract, e2e, visual, smoke, regression, fixture, CI, and manual verification coverage before or during implementation.
---

# Testing Strategy

Use before implementation plans for non-trivial work, and before release for complete products.

## Hard Gates

- Do not approve a test plan that only covers happy paths.
- Do not leave critical workflows manual-only unless there is a written reason.
- Do not rely on snapshots as primary behavioral coverage.
- Do not mock the behavior you are trying to prove.

## Required Inputs

- Product/feature scope
- Critical workflows
- Business rules
- Known risks
- Stack/test tooling
- CI constraints

## Process

1. Identify critical user workflows.
2. Identify business rules and failure modes.
3. Map each risk to the cheapest reliable test level:
   - unit
   - integration
   - contract
   - e2e
   - visual
   - smoke
   - manual
4. Define regression tests for known or likely bugs.
5. Define fixtures and test data.
6. Define local and CI commands.
7. Define what must run before merge and before release.
8. Identify accepted gaps with rationale.

## Required Output

- Risk-to-test matrix
- Critical workflow coverage
- Required regression tests
- Commands to run
- Fixtures/data plan
- CI expectations
- Manual smoke checklist
- Known gaps and rationale
- Next skill to use

## Rules

- Prefer behavior tests over implementation tests.
- Every bugfix needs a regression test when feasible.
- Critical flows need at least one integration, e2e, or smoke path.
- Tests must be deterministic enough for CI.
- Security-sensitive behavior needs negative tests.

## Red Flags

- Only snapshot tests.
- Mocking the thing being tested.
- No negative/error tests.
- Tests that pass without exercising the real workflow.
- Manual-only verification for critical logic.
- No test command documented.
