---
name: visual-quality-review
description: Use before accepting UI work as complete; reviews screenshots or running app for visual polish, responsiveness, accessibility, layout bugs, generic design, asset quality, and interaction states.
---

# Visual Quality Review

Use this after UI implementation and before final verification.

## Required Evidence

Prefer fresh screenshots or browser inspection at:

- 375 px mobile
- 768 px tablet
- 1024 px small desktop
- 1440 px desktop

If screenshots cannot be taken, state that limitation and perform code-level review.

## Review Checklist

### First Impression
- The product identity is visible immediately.
- The interface does not look like a generic template.
- The hierarchy is clear within 5 seconds.

### Layout
- No overlap, clipping, broken wrapping, or accidental horizontal scroll.
- Spacing is consistent.
- Sections are not styled as nested cards.
- Important content is not hidden below decorative material.

### Components
- Buttons, forms, tabs, menus, and controls have default, hover, focus, disabled, loading, and error states where relevant.
- Icons are recognizable and aligned.
- Tables/lists handle long text and empty data.

### Accessibility
- Contrast is WCAG AA where practical.
- Focus states are visible.
- Interactive elements have names.
- Motion respects reduced-motion preferences.

### Assets
- Images reveal the actual product, place, object, gameplay, or state.
- Assets are not blurry, fake, stretched, or decorative filler.
- Hero media supports the message.

### Responsiveness
- Mobile has intentional layout, not merely squeezed desktop.
- Typography remains readable.
- Touch targets are usable.

## Output

Findings first, ordered by severity:

- Critical: blocks usability or trust.
- Important: visible quality issue or accessibility miss.
- Minor: polish improvement.

Then give a short approval or required-fixes verdict.
