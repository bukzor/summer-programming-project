---
difficulty: easy
concepts:
  - files and assets
  - pyxel image banks (load a PNG into a bank, blit by bank + region)
---

Draw her own block textures (Piskel or lospec.com), 40×40 PNGs loaded into
a pyxel image bank via `pyxel.image(0).load(0, 0, "path.png")`, swap
`pyxel.rect(...)` fills for `pyxel.blt(...)` blits.
