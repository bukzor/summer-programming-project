---
status: contested
likelihood: 0.7
sources:
    - ../sources.kb/buck.md
tags: [environment, hardware]
---

Current provisional plan, in preference to
`../archive.kb/claims.kb/hardware-is-android-tablet.md`: sessions run on Buck's own
Chromebook, ChromeOS's Linux (Crostini) developer container enabled, with
an extra keyboard/mouse bluetooth-paired (2026-07-09, Buck). Crostini
gives a real Debian userland — `pip`/`uv` install normally, no
Android-packaging workarounds. Confirmed live: the assistant's own working
shell for this repo is itself running inside that exact Crostini
container, so environment checks (can pyxel/pygame/arcade actually install
here?) can be run directly in-session rather than remotely over adb/ssh
like the tablet track required.

Current pick as of 2026-07-09 (Buck) — see
`../questions.kb/session-hardware.md`. Not a final decision; the tablet
track (`../archive.kb/claims.kb/hardware-is-android-tablet.md`,
`../archive.kb/claims.kb/recommended-environment-pydroid-primary.md`) was
moved to `../archive.kb/` 2026-07-11 to stop cluttering the live decision
graph, not deleted, in case of a pivot back.