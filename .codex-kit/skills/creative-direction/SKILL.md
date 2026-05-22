---
name: creative-direction
description: Use before any UI implementation when the interface must feel alive, unique, branded, premium, editorial, playful, cinematic, operational, immersive, or strongly non-generic; produces a hard visual direction that downstream planning and implementation must follow.
---

# Creative Direction

This is the lead design skill for every project with an interface. It prevents generic SaaS/template output before implementation starts.

Use before `.codex-kit/skills/interface-craft/`. Do not let `brainstorming`, `full-project-architecture`, `writing-plans`, or `executing-plans` redefine the approved visual direction.

## Hard Gates

- Do not implement UI until a creative direction is approved.
- Do not approve directions described only as "modern", "clean", "premium", "minimal", "beautiful", "sleek", or "professional".
- Do not approve a direction that could fit another unrelated product after swapping the logo.
- Do not approve a page whose main visual idea is cards, gradients, blobs, generic dashboards, or template composition.
- Do not proceed without an asset strategy when the experience depends on visual impact.

## When To Load References

- Read `references/aesthetic-directions.md` when you need stronger visual directions or anti-generic alternatives.
- Read `references/anti-generic-checklist.md` before approving a direction or handing off to implementation.

## Required Inputs

- Product type and audience
- Primary workflow or first-screen purpose
- Brand/product/person/place being represented
- Desired feeling in the first 5 seconds
- Existing design system, assets, or constraints
- Competitors or references, if any

If these are missing, ask concise questions one at a time.

## Process

1. Inspect current UI, assets, brand language, domain, and competitors when available.
2. Define the first-impression target: what the user should feel, understand, and want to do in 5 seconds.
3. Generate exactly 3 distinct visual concepts:
   - **Recommended**: best fit for the product and audience.
   - **Safer**: lower risk, easier to execute.
   - **Bolder**: more memorable, higher execution risk.
4. Each concept must include:
   - concept name
   - visual thesis
   - why it belongs to this product
   - layout posture
   - typography personality
   - color roles
   - asset/media strategy
   - motion/interactions
   - what it refuses to do
   - execution risks
5. Run the anti-generic test:
   - Could this belong to another unrelated startup?
   - Is the product visible without reading nav text?
   - Are visuals carrying meaning, not decoration?
   - Is there one memorable design move?
6. Recommend one direction with reasoning.
7. Get user approval before implementation.

## Required Output

Produce a creative direction brief:

- Direction name
- One-sentence visual thesis
- First-impression target
- Differentiation proof
- Palette roles
- Typography direction
- Layout/composition rules
- Asset strategy
- Motion and interaction behavior
- Component personality
- Explicit anti-patterns
- Acceptance criteria for `visual-quality-review`
- Next skill: `.codex-kit/skills/interface-craft/`

## Differentiation Proof

The brief must answer:

> Why could this interface not belong to a random generic SaaS if the logo changed?

If the answer is weak, revise the direction.

## Anti-Generic Defaults

- Prefer one strong concept over many decorative tricks.
- Use product-specific artifacts, data, imagery, language, or interaction patterns.
- Let layout express the domain: operational tools can be dense and precise; editorial products can be cinematic; games can be expressive; portfolios can be object/person-led.
- Use generated or real bitmap assets when visual identity depends on imagery.
- Make motion purposeful: reveal state, show cause/effect, or create product character.

## Red Flags

- Gradient hero with floating cards as the main idea.
- Abstract blobs/orbs as decoration.
- Monochrome purple/blue SaaS palette without product reason.
- "Modern dashboard" with no domain-specific detail.
- Stock-like imagery that hides the real product.
- Empty states, errors, and loading states left undesigned.
- UI direction that only says colors/fonts and not composition/assets/behavior.
