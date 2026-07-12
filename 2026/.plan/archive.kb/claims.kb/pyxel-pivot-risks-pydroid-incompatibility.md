---
status: contested
likelihood: 0.6
sources:
    - ../../sources.kb/scratch-pygame-zero-repo.md
    - ../sources.kb/pydroid-play-store.md
depends:
    - ../claims.kb/hardware-is-android-tablet.md
    - ../claims.kb/pydroid3-viable-python-pygame-env.md
tags: [environment, tools, risk, dormant]
---

Parked, not resolved: relevant only if hardware pivots back to the tablet
(`hardware-is-android-tablet.md`). Pydroid 3's prebuilt-library repository
is confirmed to ship pygame 2 specifically; pyxel is a Rust/PyO3-compiled
engine with no confirmed prebuilt wheel for Pydroid or Termux/Android
generally, and neither environment is set up for on-device Rust
compilation — so a tablet pivot would need this checked before assuming
pyxel just works there. Moot on the current Chromebook/Crostini plan,
where pyxel is confirmed to run (verified directly in this repo's own
shell, same machine, same glibc snag and fix the sibling project hit).
