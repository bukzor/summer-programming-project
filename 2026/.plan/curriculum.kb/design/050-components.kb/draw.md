---
why:
  - ../040-design.kb/single-file-module-level-architecture.md
---

`def draw():`, paired with `def update():` — `pyxel.run(update, draw)`
calls both ~30 times/second (the invisible forever loop, see
`../../background.kb/scratch-bridge.kb/misconceptions.kb/the-forever-loop-is-invisible.md`).
`draw()` fills sky, UI strip, and (from session 2) the world grid;
`update()` starts as `pass` in session 0 and is where all input polling
lives from session 3 on (see `key-polling.md`, `mouse-polling.md`). Abby
never writes the loop, only what's inside it.
