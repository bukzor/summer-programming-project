---
status: asserted
kind: entailment
conclusion: ../claims.kb/recommended-environment-crostini-primary.md
premises:
    - ../claims.kb/hardware-is-chromebook-crostini.md
    - ../archive.kb/claims.kb/termux-x11-has-recurring-unresolved-bugs.md
sources:
    - ../sources.kb/claude.md
tags: [environment]
---

Once hardware moved to Chromebook/Crostini, every Android-specific
constraint that drove the Pydroid-vs-Termux debate stops applying at once:
no ad-gated IDE to work around (Pydroid), no unreliable X11 install path
to gamble on (Termux, `../archive.kb/claims.kb/termux-x11-has-recurring-unresolved-bugs.md`), and
no prebuilt-wheel gap blocking pyxel specifically (there's no confirmed
pyxel wheel for Pydroid/Termux/Android, and neither supports on-device
Rust compilation). Crostini is real Debian Linux with a real package
ecosystem — the same category of environment
`../archive.kb/deductions.kb/why-pygame-zero.md` originally wanted before the tablet forced a detour
through mobile-IDE tradeoffs.
