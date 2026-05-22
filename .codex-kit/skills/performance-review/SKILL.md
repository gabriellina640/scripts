---
name: performance-review
description: Use when performance matters or before release; reviews frontend bundle/rendering, backend latency, database queries, caching, loading states, memory, network behavior, and measurement evidence.
---

# Performance Review

Use before release or when a performance issue is suspected.

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
4. Review likely bottlenecks.
5. Prioritize fixes by user impact and effort.

## Review Areas

- Frontend bundle size and code splitting
- Image/media size and loading strategy
- Render loops and unnecessary state churn
- API chattiness and waterfall requests
- Database indexes and N+1 queries
- Cache correctness and invalidation
- Loading, skeleton, and optimistic states
- Background work and retries

## Output

- Measurements or stated evidence limits
- Critical path assessment
- Findings by severity
- Recommended fixes
- Accepted tradeoffs

## Red Flags

- Optimizing without knowing the critical path.
- Caching private or tenant-scoped data incorrectly.
- Hiding slow operations with spinners only.
- Large images used as layout decoration.
- Database queries added without indexes for expected filters.
