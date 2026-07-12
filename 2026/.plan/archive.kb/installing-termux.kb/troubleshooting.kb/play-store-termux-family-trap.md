# Accidentally on the Play Store build of a Termux-family app

Looks like: `adb shell pm list packages -i | grep termux` shows
`installer=com.android.vending` for `com.termux` (should be `null` --
sideloaded from F-Droid). Or: buying a Termux add-on (e.g.
Termux:Styling) through the Play Store, including via a family-library
purchase, nudges you toward installing core Termux from the Store too
(same listing surface, easy to tap without noticing the source).

Why it matters: the Play Store build is a maintainers-acknowledged
"unofficial/forked release source" (see
`../steps.kb/01-install-apks.md` for the full explanation and sources),
diverged from the F-Droid build this runbook is written and verified
against.

Fix: uninstall the Play Store build, sideload F-Droid's (same package id,
so uninstall-then-install, not upgrade-in-place):

    adb uninstall com.termux
    adb install ~/Downloads/com.termux_1002.apk   # or current F-Droid APK

This re-triggers Play Protect's verifier on the sideloaded APK -- expect
an on-device "Install anyway?" dialog requiring physical confirmation
(not the hard `INSTALL_FAILED_VERIFICATION_FAILURE` failure code covered
in `install-failed-verification-failure.md` -- same underlying wall,
different manifestation, no headless/adb-only workaround for this one).

The uninstall also silently drops the battery-optimization whitelist
exemption (`dumpsys deviceidle whitelist`) even though the package name
is unchanged -- re-apply and re-verify per step 01.4 after reinstalling:

    adb shell "dumpsys deviceidle whitelist +com.termux"
    adb shell dumpsys deviceidle whitelist | grep termux

This applies equally to add-ons: buying Termux:Styling on the Play Store
installs `com.termux.styling` from `com.android.vending` too. Same fix:

    adb uninstall com.termux.styling
    adb install ~/Downloads/com.termux.styling_1000.apk   # or current F-Droid APK
