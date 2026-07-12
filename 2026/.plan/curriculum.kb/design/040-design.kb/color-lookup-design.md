---
why:
  - ../030-requirements.kb/kid-readable-code.md
  - ../020-goals.kb/explain-on-demand.md
---

Block color is a lookup, not inline logic: a `COLORS = {block_name: color}`
dict using pyxel's fixed 16-color palette constants (`pyxel.COLOR_BROWN`,
etc). This is deliberately Abby's first dict — "paint by numbers" is a
concrete enough frame that the abstraction doesn't need defining before she
uses it (session 2). A genuinely custom color (not one of the 16) means
overwriting a palette slot — `pyxel.colors[N] = 0xRRGGBB` — deferred until
she wants one; it's a bigger, rarer move than pgzero's inline RGB tuple
would have been, since it recolors that slot everywhere at once.
