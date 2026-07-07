---
date: 2026-07-07
kind: app-install
reverts: 2026-07-07-installed-termux-and-termux-x11.md
---

Reinstalled `com.termux` via F-Droid APK (`0.118.3` build 1002),
replacing a Play Store build (`targetSdk=28`, an unofficial fork per
`../installing-termux.kb/troubleshooting.kb/play-store-termux-family-trap.md`).
Plausible but *not confirmed* contributor to the `python-pygame` ABI
mismatch in `../installing-termux.kb/troubleshooting.kb/`
(`pygame-python-abi-mismatch.md`) -- the version gap could equally be
repo freshness at fetch time, unrelated to which app installed it.
`com.termux.x11` untouched.

New UID: `u0_a346` (was `u0_a344`). App-private state wiped (packages,
`~/.ssh`) -- steps 01-02 need redoing. Phantom-process-killer survived
(global setting); battery whitelist didn't -- dropped by the uninstall,
re-applied manually (`dumpsys deviceidle whitelist +com.termux`). Don't
assume the whitelist carries over a reinstall.

Verified: `adb shell dumpsys package com.termux` shows
`versionName=0.118.3`, `installerPackageName=null`.
