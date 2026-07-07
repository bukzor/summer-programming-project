---
date: 2026-07-07
kind: app-install
---

Termux:Styling (`com.termux.styling`) installed on the tablet, sideloaded
from F-Droid via `adb install` -- same source and method as core Termux
(`2026-07-07-termux-apks-installed.md`), for consistency with
`installing-termux.kb/steps.kb/01-install-apks.md`.

    adb install ~/Downloads/com.termux.styling_1000.apk

Hit `INSTALL_FAILED_VERIFICATION_FAILURE` on first attempt; resolved per
`2026-07-07-play-protect-verifier-disabled.md`.

Context: Termux's default terminal font renders `l`/`i` unusually wide,
suspected to be ligature rendering rather than a font-selection bug.
Termux:Styling gives an on-device font picker (long-press terminal ->
More -> Style -> Font) to switch to a non-ligature font (e.g. `Hack`,
`DejaVuSansMono`); no font was changed yet as of this entry.

Verified: `adb shell pm list packages -i | grep termux` shows
`com.termux.styling  installer=null`.

Revert: `adb uninstall com.termux.styling`.
