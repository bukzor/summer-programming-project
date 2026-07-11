---
candidate-resolutions:
  - ../claims.kb/keep-current-geometry-through-pyxel-pivot.md
sources:
  - ../sources.kb/assistant-pyxel-pivot-2026-07-09.md
depends:
  - ../../technical-policy.kb/geometry-constants.md
  - ../../design/040-design.kb/world-representation.md
---

Now that the engine is pyxel (fixed 16-color palette, 4x6px default font,
8px tile-size convention), should the project keep the existing 800x600
window / 40px-tile geometry (minimal disruption — just reimplement the
same drawing calls), or shift to pyxel's native small-canvas retro look
(smaller window, smaller tiles, scaled up via `display_scale`)? Asked live;
user deferred the decision back to the assistant rather than choosing.
