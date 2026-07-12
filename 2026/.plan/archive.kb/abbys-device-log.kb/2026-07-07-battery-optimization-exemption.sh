#!/usr/bin/env bash
# Exempt Termux and Termux:X11 from battery optimization (Doze whitelist).
# Equivalent to Settings > Apps > <app> > Battery > Unrestricted, without
# on-device navigation.
# See: 2026-07-07-battery-optimization-exemption.md
set -euo pipefail

serial=192.168.87.29:46361  # adb devices -l; re-pair if stale, see wireless-adb-enabled.md

adb -s "$serial" shell "dumpsys deviceidle whitelist +com.termux"
adb -s "$serial" shell "dumpsys deviceidle whitelist +com.termux.x11"

# Verify
adb -s "$serial" shell "dumpsys deviceidle whitelist" | grep termux
