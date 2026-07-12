---
status: asserted
kind: entailment
conclusion: ../claims.kb/recommended-next-tool-pyxel.md
premises:
    - ../claims.kb/scratch-builds-concepts-not-syntax.md
    - ../claims.kb/visual-feedback-sustains-motivation.md
    - ../claims.kb/pyxel-is-natural-successor.md
    - ../claims.kb/p5js-is-viable-alternative.md
sources:
    - ../sources.kb/claude.md
depends:
    - why-pygame-zero.md
tags: [tools]
---

The sibling project's engine is pyxel, not pgzero
(`../sources.kb/scratch-pygame-zero-repo.md`). Same shape of argument as
the parked `why-pygame-zero.md`: she already has the concepts
(scratch-builds-concepts-not-syntax); what she lacks is text syntax, and the
risk is losing engagement during that transition
(visual-feedback-sustains-motivation). Both pyxel and p5.js satisfy the
"keep the visual feedback loop tight" constraint, so the choice again comes
down to install-a-thing vs. work-in-a-browser, and pyxel wins the default
slot for the same reason pgzero did — real Python is the more broadly
useful skill if the project ever grows past game-making. The difference:
the case for *pyxel specifically* rests on its constraints already doing
pedagogical work in this project's own design (pyxel-is-natural-successor),
not on outside CS-ed precedent the way pgzero's did.

Hardware context carried over unchanged: "install a thing" is no longer the
tablet-vs-laptop question the original deduction worried about — hardware
has since moved to Buck's Chromebook/Crostini
(`../claims.kb/hardware-is-chromebook-crostini.md`), which is confirmed to
run pyxel directly.
