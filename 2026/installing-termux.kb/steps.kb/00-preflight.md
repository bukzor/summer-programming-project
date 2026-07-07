# 00 -- Preflight (from the laptop, over adb)

Time-box the whole attempt: one evening, hard stop at 3 hours
(`../../claims.kb/termux-practical-risk-estimate.md` puts a 15-25% chance
on this becoming an open-ended time sink; the stop-loss is the
mitigation). Wherever you stop, write the `../runs.kb/` entry.

1. Confirm the adb device is the tablet:

       adb devices -l
       adb shell getprop ro.product.model          # expect TB361FU (Lenovo Idea Tab Plus / TB-K12 family)
       adb shell getprop ro.build.version.release  # was 15 at hardware profiling, 16 as of 2026-07-07 -- OS updates over time, don't hard-fail on a mismatch, just log it (../../abbys-device-log.kb/) if it changed

   `adb devices -l` may list the same physical tablet twice (a direct
   `ip:port` transport and an `adb-tls-connect` mDNS transport). If so,
   target the `ip:port` one explicitly on every command with `adb -s
   <ip:port> ...` -- plain `adb shell` errors `more than one
   device/emulator`.

2. Disable Android's phantom-process killer, which silently kills Termux
   child processes (the X server, python) on Android 12+:

       adb shell "settings put global settings_enable_monitor_phantom_procs false"
       adb shell "device_config set_sync_disabled_for_tests persistent"
       adb shell "device_config put activity_manager max_phantom_processes 2147483647"

   Verify:

       adb shell "device_config get activity_manager max_phantom_processes"

3. Deferred to after step 01 (apps must be installed first): exempt both
   apps from battery optimization -- over adb (`dumpsys deviceidle
   whitelist`), see step 01.4; no on-device Settings navigation needed.

4. Log the setting change as a `../../abbys-device-log.kb/` entry
   (kind: setting-change) -- it survives this experiment and a future
   agent has no other way to know the killer was disabled.

**Success:** model and Android version match; `max_phantom_processes`
reads back 2147483647; device-log entry written.
