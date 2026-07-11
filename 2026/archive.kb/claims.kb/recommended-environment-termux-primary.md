---
status: contested
likelihood: 0.5
sources:
    - ../../sources.kb/claude.md
depends:
    - ../deductions.kb/why-termux-over-pydroid.md
    - ../claims.kb/termux-practical-risk-estimate.md
tags: [recommendation, environment]
---

Reverted from "primary" once the practical failure risk was actually
checked (`../deductions.kb/why-not-termux-for-launch.md`) — the
philosophical case (real Linux, no ads) is still correct, but recurring
multi-year Termux:X11 display bugs plus unconfirmed Mali-GPU behavior on
this exact chip make it a real gamble to gate session one on, not a
minor inconvenience. Worth trying as Buck's own side project on a free
evening, decoupled from the actual kickoff — not as the thing session one
depends on working.
