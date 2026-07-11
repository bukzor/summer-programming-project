---
why:
  - ../040-design.kb/inventory-and-crafting-data-model.md
---

Inside `def update():`, `if pyxel.btnp(pyxel.KEY_X):` — polls whether a key
was pressed *this frame*, not held. Drives crafting triggers (session 5:
P/S/X) and block selection (session 7: number keys).
