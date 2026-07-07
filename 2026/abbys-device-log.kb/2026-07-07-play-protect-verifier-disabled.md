---
date: 2026-07-07
kind: setting-change
---

Disabled Play Protect's package verifier to get past
`INSTALL_FAILED_VERIFICATION_FAILURE` on a sideloaded APK (hit installing
Termux:Styling from F-Droid; same wall hit installing Termux itself this
morning). Per `installing-termux.kb/troubleshooting.kb/install-failed-verification-failure.md`.

    adb shell "settings put global package_verifier_enable 0"
    adb shell "settings put global verifier_verify_adb_installs 0"

Immediately re-enabled after the install succeeded --
see `2026-07-07-play-protect-verifier-reenabled.md`. Don't leave this off;
it's Abby's tablet.
