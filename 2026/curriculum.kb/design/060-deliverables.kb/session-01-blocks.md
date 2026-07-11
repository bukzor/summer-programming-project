---
why:
  - ../050-components.kb/draw.md
status: not-started
---

**Goal:** a world that reads as Minecraft.

**Build:** one brown `pyxel.rect(x, y, TILE, TILE, col)` → variables → a
`for` loop makes a row of grass → more loops stack dirt and stone layers.

**Concepts:** `pyxel.rect`/pixel coordinates; `for` + `range`; multiplying by
`TILE`; layers as y-ranges. First deliberate wrong-prediction moment: "where
will y=500 be?" (pyxel's y grows down, unlike Scratch).

**Done when:** full-width sky/grass/dirt/stone cross-section.

**Deliberate bug:** off-by-one in `range` leaving a gap column.

**Pitfall:** y grows downward — a guaranteed wrong prediction; that's the
plan, not a problem.

**Trial checkpoint:** this session closes the bounded Python trial
(`../../../claims.kb/resolved-next-tool-trial.md`) — session 0 plus this
one are the "1-2 sessions," and this is the first point there's a real
"reads as Minecraft" world on screen to weigh against Scratch. Ask her
directly, no leading: keep going in Python, or go back to full-time
Scratch? Either answer is a genuine win, not a failure state — say so out
loud. Continuing means session 2 proceeds as planned; stopping means the
trial is honestly closed — no guilt, Scratch stays fully available, and
the plan doesn't push past here.
