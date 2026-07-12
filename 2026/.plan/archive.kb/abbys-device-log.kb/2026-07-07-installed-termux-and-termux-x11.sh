#!/usr/bin/env bash
# Install Termux (F-Droid) + Termux:X11, battery-whitelist both.
# See: 2026-07-07-installed-termux-and-termux-x11.md
set -euo pipefail

adb install ~/Downloads/com.termux_1002.apk
adb install ~/Downloads/app-universal-debug.apk

adb shell "dumpsys deviceidle whitelist +com.termux"
adb shell "dumpsys deviceidle whitelist +com.termux.x11"

# Verify
adb shell pm list packages -i | grep com.termux
adb shell dumpsys deviceidle whitelist | grep termux
