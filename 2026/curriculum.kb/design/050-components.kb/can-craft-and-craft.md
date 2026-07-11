---
why:
  - ../040-design.kb/inventory-and-crafting-data-model.md
  - ../020-goals.kb/scratch-first-jargon-second.md
---

`def can_craft(item):` returns True/False by checking `RECIPES[item]`
against `inventory` — Abby's first function that *answers* rather than just
*does* (the pointy-Boolean-block bridge). `def craft(item):` subtracts
ingredients and adds the product, and is only ever called after
`can_craft` confirms it — forgetting that guard is session 5's deliberate
dupe-glitch bug.
