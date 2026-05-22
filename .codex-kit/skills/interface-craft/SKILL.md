---
name: interface-craft
description: Use when implementing or redesigning UI after creative direction is approved; turns the approved visual thesis into polished screens, components, responsive behavior, assets, states, accessibility, and interaction details without reverting to generic templates.
---

# Interface Craft

Use this to implement UI with polish and product specificity. It executes the approved `creative-direction`; it does not invent a different visual direction.

## Required Before Use

- Approved product/design scope.
- Approved `.codex-kit/skills/creative-direction/` brief for important user-facing UI.
- Existing design system inspected, if present.

## Non-Negotiables

- Preserve the approved visual thesis.
- Use the approved asset strategy or state why it cannot be used.
- Build the real first screen or workflow, not a marketing placeholder.
- Include empty, loading, error, disabled, hover, focus, and success states where relevant.
- Support 375, 768, 1024, and 1440 px without overlap or text escape.

## Process

1. Restate the approved direction in 3 bullets before implementing.
2. Map the user workflow before layout.
3. Define the screen hierarchy:
   - primary action
   - secondary actions
   - key information
   - supporting information
   - state surfaces: empty/loading/error/success
4. Build component inventory:
   - layout shell
   - navigation
   - controls
   - data displays
   - forms
   - modals/drawers
   - feedback states
   - media/asset containers
5. Implement stable responsive constraints with explicit dimensions, grid tracks, aspect ratios, or min/max rules.
6. Use real or generated bitmap assets when the direction depends on visual impact.
7. Add accessible focus, keyboard, contrast, labels, and reduced-motion behavior.
8. Verify with screenshots when a browser app is available.

## Craft Rules

- Match UI density to the domain.
- Make the brand/product/place/person visible in the first viewport.
- Use icons for common tools and short commands.
- Do not put cards inside cards.
- Do not style every section as a floating card.
- Do not use oversized hero typography inside compact tools.
- Text must not overlap, clip, or escape.
- Fixed-format elements need stable dimensions.
- Interactions must show state change.
- Empty states must help the user continue.

## Generic Regression Check

Before handoff, ask:

- Did implementation weaken the approved direction?
- Did assets become decorative filler?
- Did the layout fall back to generic hero/cards/dashboard?
- Would screenshots still feel specific without reading the copy?

Fix any "yes" before visual review.

## Output

- Implemented UI
- Direction-preservation notes
- Component/state coverage notes
- Responsive breakpoints checked
- Accessibility notes
- Visual QA handoff criteria

## Next Skill

Use `.codex-kit/skills/visual-quality-review/` before calling the UI complete.
