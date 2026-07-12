---
why:
  - ../040-design.kb/inventory-and-crafting-data-model.md
---

`inventory`, a dict pre-seeded with every block/item name at 0 (session 4).
Mining does `inventory[block] += 1`; the UI strip loops over it to draw a
color chip + f-string count per item. Pre-seeding avoids teaching `.get()`
mid-session.
