---
date: 2026-07-07
kind: setting-change
---

Disabled Android's package verifier for adb-side-loaded installs --
`com.termux_1002.apk` failed with `INSTALL_FAILED_VERIFICATION_FAILURE`
otherwise (Play Protect didn't recognize the F-Droid build). Not mentioned
in `../installing-termux.kb/steps.kb/01-install-apks.md` as written; this
is a deviation being patched back into that step.

Verify/revert: read back `package_verifier_enable` /
`verifier_verify_adb_installs`; re-enable by setting both back to `1` (or
absent) once installs are done, if desired -- left disabled for now since
Termux:X11 updates periodically and will hit the same wall.
