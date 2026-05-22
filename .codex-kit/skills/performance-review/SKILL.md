---
name: performance-review
description: Use when performance matters or before release; reviews frontend bundle/rendering, backend latency, database queries, caching, loading states, memory, network behavior, and measurement evidence with findings by severity.
---

# Performance Review

Use before release or when a performance issue is suspected.

## Hard Gates

- Do not optimize without naming the critical path.
- Do not approve performance claims without fresh evidence or an explicit evidence limitation.
- Do not cache private or tenant-scoped data without correctness rules.
- Do not hide slow broken behavior behind a spinner.

## Required Inputs

- Product critical workflows
- Current stack and deployment assumptions
- Build/test commands
- Known performance constraints
- Available measurement tools

## Process

1. Define what "fast enough" means for the product.
2. Identify critical paths:
   - first load
   - primary action
   - search/filter
   - dashboard load
   - background job
   - API mutation
3. Gather evidence when tools exist:
   - build output
   - browser performance
   - query logs
   - API timings
   - profiling
   - bundle analysis
4. Review likely bottlenecks.
5. Separate perceived performance from actual latency.
6. Prioritize fixes by user impact and effort.
7. Define verification for each recommended fix.

## Review Areas

- Frontend bundle size and code splitting
- Image/media size and loading strategy
- Render loops and unnecessary state churn
- API chattiness and waterfall requests
- Database indexes and N+1 queries
- Cache correctness and invalidation
- Loading, skeleton, optimistic, and retry states
- Background work and queue behavior
- Memory and resource cleanup

## Required Output

- Measurements or stated evidence limits
- Critical path assessment
- Findings by severity
- Recommended fixes
- Verification commands or measurement steps
- Accepted tradeoffs
- Release risk verdict

## Severity

- Critical: blocks release, times out, leaks resources, or creates severe user failure.
- Important: likely user-visible slowness or scalability issue.
- Minor: polish or future optimization.

## Red Flags

- Optimizing without knowing the critical path.
- Caching private or tenant-scoped data incorrectly.
- Hiding slow operations with spinners only.
- Large images used as layout decoration.
- Database queries added without indexes for expected filters.
- No loading/error state for slow operations.
