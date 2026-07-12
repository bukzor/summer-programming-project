---
force: must
why:
  - ../design/040-design.kb/world-representation.md
  - ../design/030-requirements.kb/kid-readable-code.md
---

`world[row][col]` holds short strings: `"air"`, `"grass"`, `"dirt"`,
`"stone"`, `"wood"`, `"leaves"`, `"diamond"` (plus Abby's invented block).
Strings, never ints — `"dirt"` is readable, `3` is not.
