---
date: 2026-07-07
kind: setting-change
reverts: 2026-07-07-play-protect-verifier-disabled.md
---

Re-enabled Play Protect's package verifier immediately after the
Termux:Styling sideload succeeded.

    adb shell "settings put global package_verifier_enable 1"
    adb shell "settings put global verifier_verify_adb_installs 1"

Verified: `adb shell settings get global package_verifier_enable` and
`verifier_verify_adb_installs` both read `1`.
