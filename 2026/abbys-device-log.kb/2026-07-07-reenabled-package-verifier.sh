#!/usr/bin/env bash
# Re-enable Play Protect's package verifier after a sideloaded install.
# See: 2026-07-07-reenabled-package-verifier.md
set -euo pipefail

serial=192.168.87.29:46361  # adb devices -l; re-pair if stale, see wireless-adb-enabled.md

adb -s "$serial" shell "settings put global package_verifier_enable 1"
adb -s "$serial" shell "settings put global verifier_verify_adb_installs 1"

# Verify
adb -s "$serial" shell "settings get global package_verifier_enable"        # expect: 1
adb -s "$serial" shell "settings get global verifier_verify_adb_installs"  # expect: 1
