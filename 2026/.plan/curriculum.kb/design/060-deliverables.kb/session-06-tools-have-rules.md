---
why:
  - ../050-components.kb/recipes-and-tool-gating-tables.md
status: not-started
---

**Goal:** the real Minecraft progression loop, closed.

**Build:** `NEEDS_TOOL` dict; mining checks it — no pickaxe means the block
doesn't break (flash a message). Add `stone_pickaxe` recipe. Now: punch wood
→ craft wooden pickaxe → mine stone → craft stone pickaxe → mine diamond.

**Concepts:** data-driven rules; `in`; combining conditions; reusing
existing state for a new mechanic — say out loud that nothing new was
needed, just one dict.

**Done when:** a fresh world forces the full progression to reach a
diamond.

**Deliberate bug:** gate `"dirt"` behind a diamond pickaxe — softlock! What
makes a progression system fair?

**Pitfall:** keep messages simple — one global `message` string, redrawn
each frame, overwritten by events.
