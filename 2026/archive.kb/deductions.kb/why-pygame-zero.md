---
status: asserted
kind: entailment
conclusion: ../claims.kb/recommended-next-tool-pygame-zero.md
premises:
    - ../../claims.kb/scratch-builds-concepts-not-syntax.md
    - ../../claims.kb/visual-feedback-sustains-motivation.md
    - ../claims.kb/pygame-zero-is-natural-successor.md
    - ../../claims.kb/p5js-is-viable-alternative.md
sources:
    - ../../sources.kb/claude.md
tags: [tools, dormant]
---

She already has the concepts (scratch-builds-concepts-not-syntax); what she
lacks is text syntax and the risk is losing engagement during that
transition (visual-feedback-sustains-motivation). Both Pygame Zero and
p5.js satisfy the "keep the visual feedback loop tight" constraint, so the
choice between them comes down to a tie-breaker that isn't pedagogical:
install-a-thing vs. work-in-a-browser. Pygame Zero wins the default slot
because it's a strict superset of what she'd need later if the project ever
grows past game-making (real Python is the more broadly useful skill).

Correction: this originally assumed "install a thing" meant a laptop.
Her actual dedicated hardware is an Android tablet
(`../claims.kb/hardware-is-android-tablet.md`), which makes "install a
thing" nontrivial in a way it wouldn't be on a normal computer — see
`../claims.kb/pydroid3-viable-python-pygame-env.md`
(sibling within this archive) and
`why-pydroid-first.md` for how that's resolved. p5.js/Trinket remains the
correct fallback, not a worse option, if the native-app route proves
unreliable on this specific device.

Parked, not current: `why-pyxel.md` carries the live argument. Kept only
for the tablet-pivot contingency — see
`recommended-next-tool-pygame-zero.md`.
