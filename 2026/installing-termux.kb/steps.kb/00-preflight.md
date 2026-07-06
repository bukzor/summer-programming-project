# 00 -- Preflight (from the laptop, over adb)

Time-box the whole attempt: one evening, hard stop at 3 hours
(`../../claims.kb/termux-practical-risk-estimate.md` puts a 15-25% chance
on this becoming an open-ended time sink; the stop-loss is the
mitigation). Wherever you stop, write the `../runs.kb/` entry.

1. Confirm the adb device is the tablet:

       adb devices
       adb shell getprop ro.product.model          # expect Lenovo Idea Tab Plus / TB-K12 family
       adb shell getprop ro.build.version.release  # expect 15

2. Disable Android's phantom-process killer, which silently kills Termux
   child processes (the X server, python) on Android 12+:

       adb shell "settings put global settings_enable_monitor_phantom_procs false"
       adb shell "device_config set_sync_disabled_for_tests persistent"
       adb shell "device_config put activity_manager max_phantom_processes 2147483647"

   Verify:

       adb shell "device_config get activity_manager max_phantom_processes"

3. Deferred to after step 01: exempt both apps from battery optimization
   (Settings > Apps > Termux / Termux:X11 > Battery > Unrestricted).

4. Log the setting change as a `../../abbys-device-log.kb/` entry
   (kind: setting-change) -- it survives this experiment and a future
   agent has no other way to know the killer was disabled.

**Success:** model and Android version match; `max_phantom_processes`
reads back 2147483647; device-log entry written.
