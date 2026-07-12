# 01 -- Install the APKs (over adb)

Sources matter: install every Termux-family app from F-Droid, not the
Play Store, even though the Play Store listings look legitimate (real
developer, active updates) and are easy to install accidentally -- e.g.
by searching "termux" on-device, or by buying an add-on like
Termux:Styling there (own experience: buying it nudged toward installing
core Termux from the Store too, and even after backing that out, the
add-on itself still landed as a Play Store install and had to be
re-sideloaded separately -- see
`../troubleshooting.kb/play-store-termux-family-trap.md`). Termux:X11 is
not on any store; its app APK and the `termux-x11-nightly` package inside
Termux are built as a pair, so when one updates, update the other (see
`../troubleshooting.kb/black-screen.md`).

Termux was pulled from the Play Store entirely around 2020-2021 (Google's
target-API/sandboxing rules broke `apt`-installing and executing packages
at runtime) and returned in June 2024 as a separate, policy-compliant
fork -- same real developer (Fredrik Fornwall), different codebase. Per
the maintainers' own pinned statement: "The only official release sources
to install Termux from are F-Droid and GitHub... Google PlayStore releases
remain deprecated at this time... the PlayStore release has diverged from
the termux/termux-app master branch on GitHub and should be considered an
unofficial/forked release source." Confirmed on 2026-07-07: the tablet's
Play Store build carried Python 3.13.13, though this may just reflect
`packages.termux.dev` at fetch time rather than the fork bundling an older
repo -- not conclusively a fork-vs-F-Droid difference. Sources:
[termux/termux-app#4000](https://github.com/termux/termux-app/discussions/4000),
[XDA: why Termux stopped receiving Play Store updates](https://www.xda-developers.com/termux-terminal-linux-google-play-updates-stopped/),
[Termux on F-Droid](https://f-droid.org/en/packages/com.termux/).

Verify the installed build's source before trusting it:

    adb shell pm list packages -i | grep com.termux

`installer=com.android.vending` means Play Store (fork, avoid);
`installer=null` means sideloaded (F-Droid APK via `adb install`,
correct).

1. Download on the laptop:
   - Termux: latest release APK from
     https://f-droid.org/packages/com.termux/
   - Termux:X11: the `app-universal-debug` (or arm64-v8a) APK from the
     nightly release at https://github.com/termux/termux-x11/releases
   - Termux:Styling (optional on-device font/color picker; useful for
     swapping off the default font, which renders `l`/`i` unusually wide
     -- suspected ligatures, not a bug): latest release APK from
     https://f-droid.org/packages/com.termux.styling/

2. Install over adb. Budget for someone at the tablet: Play Protect will
   intervene on these sideloaded APKs, either a hard
   `INSTALL_FAILED_VERIFICATION_FAILURE` ->
   `../troubleshooting.kb/install-failed-verification-failure.md`, or an
   on-device "Install anyway?" dialog needing a physical tap (no
   headless/adb-only bypass for that manifestation). This step used to
   claim "no on-device flow needed" -- wrong, corrected 2026-07-07.

       adb install ~/Downloads/com.termux_*.apk
       adb install ~/Downloads/app-*-debug.apk
       adb install ~/Downloads/com.termux.styling_*.apk

3. Record exact filenames/versions in the `../runs.kb/` entry, and log
   the installs as `../../abbys-device-log.kb/` entries
   (kind: app-install).

4. Now do the battery-optimization exemption deferred from step 00 --
   over adb, no on-device navigation needed:

       adb shell "dumpsys deviceidle whitelist +com.termux"
       adb shell "dumpsys deviceidle whitelist +com.termux.x11"

   Verify: `adb shell dumpsys deviceidle whitelist | grep termux` lists
   both. (Termux:Styling doesn't run in the background -- no exemption
   needed.)

**Success:** `adb shell pm list packages -i | grep termux` lists
`com.termux`, `com.termux.x11`, and `com.termux.styling`, all with
`installer=null`.
