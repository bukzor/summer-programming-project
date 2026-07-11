---
status: asserted
likelihood: 0.7
sources:
  - ../sources.kb/assistant-pyxel-pivot-2026-07-09.md
depends:
  - ../../technical-policy.kb/geometry-constants.md
---

Keep the existing 800x600 window / 40px-tile / 20x12-grid geometry through
the pyxel pivot rather than shrinking to pyxel's native small-canvas retro
look (e.g. a 256x192 canvas with 16px tiles at 3x `display_scale`). Lower
disruption: every session doc, pixel-coordinate example, and the reserved
120px UI strip already assumes this geometry, and none of it depends on
pgzero specifically. The tradeoff: the project forgoes pyxel's more
idiomatic small-canvas aesthetic, and pyxel's default font (4x6px) will
read as small at this scale rather than being scaled up along with
everything else the way a native-resolution build would.
