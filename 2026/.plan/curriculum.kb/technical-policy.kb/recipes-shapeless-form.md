---
force: should
why:
  - ../design/040-design.kb/inventory-and-crafting-data-model.md
---

`RECIPES = {"planks": {"wood": 1}, "sticks": {"planks": 2}, "wooden_pickaxe":
{"planks": 3, "sticks": 2}}` — shapeless, crafting yields 1. Minecraft-
faithful yields (1 wood → 4 planks) are a same-session stretch: upgrade
values to `{"needs": {...}, "makes": 4}`. Shaped (positional 3×3) recipes are
out of scope — `../design/070-future-work.kb/real-crafting-table.md`.
