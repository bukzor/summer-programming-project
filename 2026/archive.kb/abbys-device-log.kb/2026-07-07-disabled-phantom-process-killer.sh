#!/usr/bin/env bash
# Disable Android's phantom-process killer on Abby's tablet.
# See: 2026-07-07-disabled-phantom-process-killer.md
set -euo pipefail

serial=192.168.87.29:46361  # adb devices -l; re-pair if stale, see wireless-adb-enabled.md

adb -s "$serial" shell "settings put global settings_enable_monitor_phantom_procs false"
adb -s "$serial" shell "device_config set_sync_disabled_for_tests persistent"
adb -s "$serial" shell "device_config put activity_manager max_phantom_processes 2147483647"

# Verify
adb -s "$serial" shell "settings get global settings_enable_monitor_phantom_procs"    # expect: false
adb -s "$serial" shell "device_config get activity_manager max_phantom_processes"     # expect: 2147483647
