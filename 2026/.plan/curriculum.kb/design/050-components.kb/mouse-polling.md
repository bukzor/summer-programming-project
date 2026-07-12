---
why:
  - ../040-design.kb/world-representation.md
  - ../030-requirements.kb/ui-strip-clicks-never-crash.md
---

Inside `def update():`, `if pyxel.btnp(pyxel.MOUSE_BUTTON_LEFT):` (or
`..._RIGHT`) — polls whether that button was pressed *this frame*.
Position comes from `pyxel.mouse_x`/`pyxel.mouse_y`, converted to
`col, row` via `x // TILE, y // TILE`; guard `row < GRID_ROWS` before
touching `world`. Left mines (session 3), right places (session 7).
