---
name: interface-craft
description: Use when implementing or redesigning UI after creative direction is approved; turns product and visual direction into polished screens, components, responsive behavior, states, assets, accessibility, and interaction details.
---

# Interface Craft

Use this to implement UI with polish and product specificity.

## Required Before Use

- Approved product/design scope.
- Approved creative direction for important user-facing UI.
- Existing design system inspected, if present.

## Process

1. Map the user workflow before layout.
2. Define the screen hierarchy:
   - primary action
   - secondary actions
   - key information
   - supporting information
   - empty/loading/error states
3. Build component inventory:
   - layout shell
   - navigation
   - controls
   - data displays
   - forms
   - modals/drawers
   - feedback states
4. Implement responsive constraints for 375, 768, 1024, and 1440 px.
5. Use real or generated bitmap assets when the page depends on visual impact.
6. Add accessible focus, keyboard, contrast, labels, and reduced-motion behavior.
7. Verify with screenshots when a browser app is available.

## Craft Rules

- Match UI density to the product domain.
- Use icons for common tools and short commands.
- Do not put cards inside cards.
- Do not use oversized hero typography inside compact panels.
- Text must not overlap or escape its container.
- Fixed-format elements need stable dimensions.
- Buttons, tabs, sliders, menus, toggles, and inputs must have expected states.
- Empty states must help the user recover or continue.

## Output

- Implemented UI
- Component/state coverage notes
- Responsive breakpoints checked
- Accessibility notes
- Visual QA handoff criteria

## Next Skill

Use `.codex-kit/skills/visual-quality-review/` before calling the UI complete.
