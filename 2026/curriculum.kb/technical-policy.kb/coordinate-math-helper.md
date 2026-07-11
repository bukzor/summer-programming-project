---
force: must
why:
  - ../design/030-requirements.kb/ui-strip-clicks-never-crash.md
---

`col = x // TILE`, `row = y // TILE`. Provide exactly one helper when
needed — don't let this logic drift into multiple copies. Every mouse
handler guards `row < GRID_ROWS` before touching `world`.
