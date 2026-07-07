# `adb install` fails with `INSTALL_FAILED_VERIFICATION_FAILURE`

Play Protect's package verifier blocks a sideloaded APK it doesn't
recognize -- hit installing Termux from F-Droid (not, oddly, Termux:X11
from GitHub, which installed clean on the first try).

1. Disable the verifier for the install:

       adb shell "settings put global package_verifier_enable 0"
       adb shell "settings put global verifier_verify_adb_installs 0"

2. Retry the failed `adb install`.

3. Re-enable immediately after -- don't leave it off, it's Abby's tablet:

       adb shell "settings put global package_verifier_enable 1"
       adb shell "settings put global verifier_verify_adb_installs 1"

Log both the disable and the re-enable as separate
`../../abbys-device-log.kb/` entries (kind: setting-change; the
re-enable's frontmatter `reverts:` the disable) -- don't just fix it
silently, a future agent re-running this install needs to know the wall
exists and the pattern for getting past it without leaving the device
less protected than it started.
