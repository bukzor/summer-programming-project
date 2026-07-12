---
why:
  - ../050-components.kb/mouse-polling.md
status: not-started
---

**Goal:** click a block, it breaks.

**Build:** inside `update()`: `if pyxel.btnp(pyxel.MOUSE_BUTTON_LEFT):` →
`x, y = pyxel.mouse_x, pyxel.mouse_y` → `col = x // TILE`,
`row = y // TILE` → guard `row < GRID_ROWS` and not-air → set cell to
`"air"`.

**Concepts:** polling inside the frame loop (`if ...: ...` checked every
frame, not a separate event function); integer division; if-guards;
mutating a list.

**Done when:** she can dig tunnels and find diamonds.

**Deliberate bug:** swap row/col in the lookup — clicks mine the transposed
cell. The best bug of the arc; let it run a minute.

**Pitfall:** missing UI-strip guard crashes on bottom clicks — traceback
detective time, not an adult rescue, per
`../030-requirements.kb/ui-strip-clicks-never-crash.md`.
