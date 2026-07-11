---
why:
  - ../050-components.kb/inventory-counter.md
status: not-started
---

**Goal:** numbers go up.

**Build:** `inventory` dict pre-seeded to 0; mining does
`inventory[block] += 1` before clearing the cell; UI strip draws each
block's color chip + count via f-strings.

**Concepts:** dicts as counters; `+=`; f-strings; looping over a dict to
draw UI.

**Done when:** mining anything increments the right on-screen counter.

**Deliberate bug:** increment *after* clearing the cell to `"air"` — she
collects air. Why?

**Pitfall:** UI layout eats time; `x = x + 130` per item is plenty.
