---
name: visual-quality-review
description: Use before accepting UI work as complete; reviews screenshots or running app against the approved creative direction for visual polish, uniqueness, responsiveness, accessibility, layout bugs, asset quality, and interaction states.
---

# Visual Quality Review

Use this after UI implementation and before final verification. This review can reject a UI for being generic even if it is technically correct.

## Required Evidence

Prefer fresh screenshots or browser inspection at:

- 375 px mobile
- 768 px tablet
- 1024 px small desktop
- 1440 px desktop

If screenshots cannot be taken, state that limitation and perform code-level review.

## Required Inputs

- Approved `creative-direction` brief
- Implemented UI or screenshots
- Primary workflow or first-screen goal

## Review Checklist

### Direction Fidelity
- The approved visual thesis is visible.
- The implementation did not drift into generic SaaS/template layout.
- The product identity is visible immediately.
- One memorable design move survives implementation.

### First Impression
- The user can understand the product/workflow within 5 seconds.
- The interface has a specific point of view.
- The page would not fit an unrelated product after a logo swap.

### Layout
- No overlap, clipping, broken wrapping, or accidental horizontal scroll.
- Spacing is intentional and consistent.
- Sections are not nested-card compositions.
- Important content is not buried under decoration.

### Components
- Buttons, forms, tabs, menus, and controls have default, hover, focus, disabled, loading, and error states where relevant.
- Icons are recognizable and aligned.
- Tables/lists handle long text and empty data.
- Empty states carry product tone and recovery action.

### Accessibility
- Contrast is WCAG AA where practical.
- Focus states are visible.
- Interactive elements have names.
- Motion respects reduced-motion preferences.

### Assets
- Images reveal the actual product, place, object, gameplay, or state.
- Assets are not blurry, fake, stretched, or decorative filler.
- Hero media supports the thesis.

### Responsiveness
- Mobile has intentional layout, not squeezed desktop.
- Typography remains readable.
- Touch targets are usable.
- Primary actions remain reachable.

## Verdict Rules

- Reject if it looks generic.
- Reject if the approved direction is not visible.
- Reject if mobile has overlap or unreadable text.
- Reject if primary interaction states are missing.
- Reject if visual assets are fake-looking or irrelevant.

## Output

Findings first, ordered by severity:

- Critical: blocks usability, trust, accessibility, or direction fidelity.
- Important: visible quality issue, generic regression, or missing state.
- Minor: polish improvement.

Then give one verdict:

- Approved
- Approved with minor fixes
- Required fixes before completion
