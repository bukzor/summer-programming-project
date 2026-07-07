---
date: 2026-07-07
kind: app-install
---

Installed both apps over adb (no on-device "unknown sources" flow needed):

- Termux `0.118.3` (build 1002, F-Droid "suggested"/stable, not the
  0.119.0-beta.3 also listed) -- `com.termux`
- Termux:X11 `nightly` (tag `nightly`, published 2026-07-07T13:47:58Z,
  commit `aa74aac`, package version `1.03.01-0`), `app-universal-debug.apk`
  asset -- `com.termux.x11`

First Termux install attempt failed: `INSTALL_FAILED_VERIFICATION_FAILURE`
(Play Protect's package verifier blocking a sideloaded APK it didn't
recognize; Termux:X11 installed fine on the first try, oddly). Fixed by
disabling the verifier for adb installs (see
`2026-07-07-disabled-package-verifier.md`), then the same install
succeeded.

Verified: `pm list packages | grep termux` lists both `com.termux` and
`com.termux.x11`.
