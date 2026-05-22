---
name: ui-ux-pro-max
description: Compatibility skill for older prompts asking for UI/UX Pro Max; route modern UI work through creative-direction, interface-craft, and visual-quality-review.
---

# UI UX Pro Max

This skill is kept for compatibility with older prompts.

For new work, use the stronger UI flow:

1. `.codex-kit/skills/creative-direction/`
2. `.codex-kit/skills/interface-craft/`
3. `.codex-kit/skills/visual-quality-review/`

## When This Skill Triggers

If the user explicitly asks for `ui-ux-pro-max`, do not use this as a standalone process. Translate the request into the modern flow:

- unclear product/UI goal -> start with `product-discovery`
- visual identity or non-generic UI -> use `creative-direction`
- implementation of screens/components -> use `interface-craft`
- review of implemented UI -> use `visual-quality-review`

## Minimum Standard

Any serious UI work must define:

- product/user context
- creative direction
- component states
- responsive behavior
- accessibility checks
- visual QA evidence

## Red Flags

- Starting implementation with only "make it modern".
- Using gradients, cards, and generic SaaS layouts as the whole visual idea.
- Calling UI complete without checking screenshots or responsive states.
