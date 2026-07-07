# 01 -- Install the two APKs (over adb)

Sources matter: the Play Store Termux build is not the maintained one --
use F-Droid's. Termux:X11 is not on any store; its app APK and the
`termux-x11-nightly` package inside Termux are built as a pair, so when
one updates, update the other (see
`../troubleshooting.kb/black-screen.md`).

1. Download on the laptop:
   - Termux: latest release APK from
     https://f-droid.org/packages/com.termux/
   - Termux:X11: the `app-universal-debug` (or arm64-v8a) APK from the
     nightly release at https://github.com/termux/termux-x11/releases

2. Install over adb -- no on-device "unknown sources" flow needed:

       adb install ~/Downloads/com.termux_*.apk
       adb install ~/Downloads/app-*-debug.apk

   `INSTALL_FAILED_VERIFICATION_FAILURE` ->
   `../troubleshooting.kb/install-failed-verification-failure.md`.

3. Record both exact filenames/versions in the `../runs.kb/` entry, and
   log the installs as a `../../abbys-device-log.kb/` entry
   (kind: app-install).

4. Now do the battery-optimization exemption deferred from step 00 --
   over adb, no on-device navigation needed:

       adb shell "dumpsys deviceidle whitelist +com.termux"
       adb shell "dumpsys deviceidle whitelist +com.termux.x11"

   Verify: `adb shell dumpsys deviceidle whitelist | grep termux` lists
   both.

**Success:** `adb shell pm list packages | grep termux` lists both
`com.termux` and `com.termux.x11`.
