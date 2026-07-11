---
why:
  - ../030-requirements.kb/kid-readable-code.md
  - ../030-requirements.kb/core-arc-closes-the-survival-loop.md
---

The world is a grid Abby can read and hand-edit directly: `world[row][col]`
holds a short block-name string. Pixel geometry (`TILE`, `GRID_COLS/ROWS`)
is fixed from session 0, with a UI strip pre-reserved, so no later session
forces a layout refactor. See `../050-components.kb/world-grid.md` for the
concrete data.
