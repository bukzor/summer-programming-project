---
why:
  - ../050-components.kb/can-craft-and-craft.md
status: not-started
---

**Goal:** the crafting she asked for on day one. Protect this session — it's
hers.

**Build:** `RECIPES`; `def can_craft(item):` checks amounts; `def
craft(item):` subtracts ingredients, adds product; keyboard triggers
(polling `pyxel.btnp` in `update()`: P/S/X). That's the complete core win —
no buttons needed.

**Concepts:** nested dicts; functions returning True/False; "check all
ingredients" loops; calling your own functions.

**Done when:** wood → planks → sticks → wooden pickaxe, live counts
updating; she's added one invented recipe.

**Stretch:** Minecraft-faithful yields via `{"needs": ..., "makes": 4}`;
clickable UI-strip buttons with gray-out. Don't pre-offer buttons — once
the keyboard build is solid, ask her live: "want buttons too, or leave it
at keys?" Build them only if she opts in (resolved:
`../../discourse.kb/questions.kb/should-session-5-buttons-be-core-or-stretch.md`).

**Deliberate bug:** forget to subtract ingredients — infinite pickaxes
("bug or cheat code?" — it's a dupe glitch, Minecraft has them too).

**Pitfall:** no crafting-grid UI regardless of stretch choice — buttons are
flat, not a grid; the grid is `../070-future-work.kb/real-crafting-table.md`.
