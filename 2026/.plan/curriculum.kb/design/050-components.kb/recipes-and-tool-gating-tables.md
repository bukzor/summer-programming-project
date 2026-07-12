---
why:
  - ../040-design.kb/inventory-and-crafting-data-model.md
---

`RECIPES` (session 5, shapeless: `{"planks": {"wood": 1}, ...}`) and
`NEEDS_TOOL` (session 6: `{"stone": "wooden_pickaxe", ...}`). Both pure data
— session 6 adds the entire tool-progression mechanic by adding one dict and
one `if ... in ...:` check, reusing everything session 5 already built.
