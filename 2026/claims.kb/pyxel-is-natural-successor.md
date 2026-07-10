---
status: asserted
likelihood: 0.7
sources:
    - ../sources.kb/claude.md
depends:
    - ../curriculum.kb/design/040-design.kb/color-lookup-design.md
    - ../curriculum.kb/design/040-design.kb/single-file-module-level-architecture.md
    - ../curriculum.kb/background.kb/scratch-bridge.kb/misconceptions.kb/the-forever-loop-is-invisible.md
    - ../curriculum.kb/background.kb/scratch-bridge.kb/direct-translations.md
tags: [tools, python, pyxel]
---

Pyxel doesn't carry Pygame Zero's specific credentials: no equivalent
"Code Club sequences this directly after Scratch" pedigree, and
`pyxel.init()` / `pyxel.run(update, draw)` are more explicit boilerplate
than pgzero's zero-import, auto-detected `draw`/`update`. So
`pygame-zero-is-natural-successor.md`'s argument doesn't transfer to pyxel
as literally written — it's weaker or false on two of its three legs.

What holds up instead is a different argument, already load-bearing in this
project's own design tower rather than borrowed from outside precedent:
pyxel's fixed 16-color palette turns color choice into her first,
concretely-motivated dict (`COLORS = {block_name: color}`,
`color-lookup-design.md`) rather than an arbitrary exercise; the required,
visible `update()`/`draw()` split makes "the forever loop is invisible"
bridge a nameable session-0 moment instead of something pgzero would have
hidden entirely (`the-forever-loop-is-invisible.md`); and its one-file,
plain-function native idiom matches the kid-readable-code requirement
without imposing anything (`single-file-module-level-architecture.md`). The
one real regression — polling (`pyxel.btn`/`btnp`) instead of Scratch-like
event handlers — is real but small, and already bridged in one line
(`direct-translations.md`: "the check itself is the hat block").

Net: a different case than Pygame Zero's, resting on this curriculum's own
design fit rather than institutional precedent, but comparably firm.
