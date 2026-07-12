---
date: 2026-07-07
kind: os-update
---

`adb shell getprop ro.build.version.release` now reads `16`, not the `15`
recorded when the hardware was first profiled
(`../claims.kb/hardware-is-android-tablet.md`). The tablet took an OS
update at some point before this session. Model is unchanged (`TB361FU`).

Worth rechecking any Android-12+-era assumption (phantom-process killer
behavior, X11/SDL quirks) against 16 specifically if something in
`../installing-termux.kb/` behaves unexpectedly.
