---
force: should
why:
  - ../design/040-design.kb/color-lookup-design.md
---

Use pyxel's fixed 16-color palette constants (`pyxel.COLOR_BLACK`,
`..._BROWN`, `..._GREEN`, `..._GRAY`, `..._LIGHT_BLUE`, `..._LIME`,
`..._CYAN`, ...) in a `COLORS = {block_name: color}` dict — there's no
"pass any RGB" option per draw call the way pygame had. A genuinely custom
color means overwriting a palette slot (`pyxel.colors[N] = 0xRRGGBB`) —
that's the moment to teach hex literals, deferred until she wants one.
Images are a later, optional art session
(`../design/070-future-work.kb/art-day.md`).
