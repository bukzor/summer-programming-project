---
force: should
why:
  - ../design/040-design.kb/inventory-and-crafting-data-model.md
---

`inventory` is a dict pre-seeded with every block/item name at 0. Avoids
teaching `.get()` mid-session — every lookup is guaranteed to exist.
