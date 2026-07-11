---
why:
  - ../050-components.kb/mouse-polling.md
  - ../030-requirements.kb/core-arc-closes-the-survival-loop.md
status: not-started
---

**Goal:** place blocks; build a house; it's Minecraft now. End of core arc.

**Build:** `selected` block variable; number keys (or clicking an inventory
chip) select; poll `pyxel.btnp(pyxel.MOUSE_BUTTON_LEFT)`/`..._RIGHT` in
`update()` — left mines, right places if `inventory[selected] > 0` and
cell is `"air"`; decrement on place.

**Concepts:** selection state; `pyxel.MOUSE_BUTTON_LEFT`/`..._RIGHT`; the
same guard pattern, third time — name the pattern recognition.

**Done when:** she mines a hill and builds a house from the proceeds.

**Deliberate bug:** allow placing into non-air — blocks overwrite blocks;
duplication economics again.

**Pitfall:** some touchpads make right-click awkward; fallback is
hold-a-key + click.
