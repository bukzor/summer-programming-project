---
date: 2026-07-07
kind: setting-change
---

Disabled Android's phantom-process killer, which silently kills Termux
child processes (X server, python) on Android 12+. Applied over adb:

    settings put global settings_enable_monitor_phantom_procs false
    device_config set_sync_disabled_for_tests persistent
    device_config put activity_manager max_phantom_processes 2147483647

Verified: `settings get global settings_enable_monitor_phantom_procs` reads
`false`; `device_config get activity_manager max_phantom_processes` reads
`2147483647`. (`device_config get activity_manager
sync_disabled_for_tests` reads `null` -- that's expected, it's a
write-only test flag, not a queryable property; the `set` command itself
returned exit 0.)

Two adb devices were listed (`192.168.87.29:46361`, direct, and an
`adb-tls-connect` mDNS transport) -- both are the same physical tablet, so
all commands targeted the IP transport explicitly with `-s`.
