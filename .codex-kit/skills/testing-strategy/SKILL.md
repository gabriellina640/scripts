---
name: testing-strategy
description: Use when a project or feature needs a complete test plan; defines unit, integration, e2e, smoke, regression, fixture, CI, and manual verification coverage before or during implementation.
---

# Testing Strategy

Use this before implementation plans for non-trivial work, and before release for complete products.

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
4. Define fixtures and test data.
5. Define CI commands and local commands.
6. Identify gaps that are accepted intentionally.

## Output

- Test matrix
- Required regression tests
- Commands to run
- Fixtures/data plan
- CI expectations
- Manual smoke checklist
- Known gaps and rationale

## Rules

- Prefer behavior tests over implementation tests.
- Every bugfix needs a regression test when feasible.
- Critical flows need at least one end-to-end or smoke path.
- Tests must be deterministic enough for CI.

## Red Flags

- Only snapshot tests.
- Mocking the thing being tested.
- No negative/error tests.
- Tests that pass without exercising the real workflow.
- Manual-only verification for critical logic.
