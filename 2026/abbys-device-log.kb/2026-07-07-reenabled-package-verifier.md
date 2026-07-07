---
date: 2026-07-07
kind: setting-change
reverts: 2026-07-07-disabled-package-verifier.md
---

Re-enabled Play Protect's package verifier (`package_verifier_enable`,
`verifier_verify_adb_installs` back to `1`). The prior entry disabled it
to get past `INSTALL_FAILED_VERIFICATION_FAILURE` on the Termux APK
install and left it disabled "for now" reasoning future Termux:X11
updates would hit the same wall -- overruled: this is Abby's tablet,
leaving app-install verification off longer than the single install it
was needed for is the wrong default. Both apps were already installed
before this reverted, so no app state was undone -- future
Termux:X11 updates that hit the same verifier error should disable/re-enable
around just that install, not leave it off.

Verified: `settings get global package_verifier_enable` and
`verifier_verify_adb_installs` both read `1`.
