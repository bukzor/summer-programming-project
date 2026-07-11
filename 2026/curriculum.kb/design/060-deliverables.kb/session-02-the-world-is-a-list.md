---
why:
  - ../050-components.kb/world-grid.md
  - ../040-design.kb/color-lookup-design.md
status: not-started
---

**Goal:** the world becomes *data she can edit*. (2a of 2 — see
`session-02b-trees-and-treasure.md` for the pure-play half; split resolved
per `../../discourse.kb/questions.kb/should-session-2-split-into-2a-2b.md`.)

**Build:** `COLORS` dict; `world` built by loops (air/grass/dirt/stone
rows); nested loop in `draw()` renders `world[row][col]`.

**Concepts:** lists, list-of-lists, indexing, dicts as lookup tables, nested
loops — the heaviest single-session conceptual load in the arc, which is
exactly why it doesn't also carry 2b's content this session.

**Done when:** editing world data visibly reshapes the world (e.g. change a
row's block name in the code, rerun, see it move).

**Deliberate bug:** swap `[row]`/`[col]` once; the world draws transposed.

**Pitfall:** build via loops, never a 240-cell hand-typed literal.
