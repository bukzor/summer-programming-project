---
force: must
why:
  - ../design/040-design.kb/inventory-and-crafting-data-model.md
---

`NEEDS_TOOL = {"stone": "wooden_pickaxe", "diamond": "stone_pickaxe"}` —
data, not code. Session 6 must add the whole progression mechanic by adding
a dict and an `in` check, not new control-flow branches.
