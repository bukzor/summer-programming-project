---
status: asserted
likelihood: 0.75
sources:
    - ../../sources.kb/claude.md
depends:
    - ../deductions.kb/why-pydroid-first.md
    - ../claims.kb/pydroid-ads-fire-after-every-run.md
    - ../deductions.kb/why-not-termux-for-launch.md
tags: [recommendation, environment]
---

Restored as the primary pick for actually launching sessions with Abby.
The ads-after-every-run problem is real but bounded and solvable (tune it
out with a paid tier, or just tolerate it initially and revisit); Termux's
failure mode is open-ended (an unconfirmed evening that might not end in
a working setup at all). Known, bounded annoyance beats unknown, unbounded
setup risk when the thing being gated is Abby's actual first session.
Termux remains worth trying separately, on Buck's own time, decoupled
from the project's start date.

Superseded 2026-07-09: `../../questions.kb/session-hardware.md` resolved to
the Chromebook/Crostini, not the tablet, mooting this whole Pydroid-vs-
Termux tradeoff. See `../../claims.kb/recommended-environment-crostini-primary.md`.
