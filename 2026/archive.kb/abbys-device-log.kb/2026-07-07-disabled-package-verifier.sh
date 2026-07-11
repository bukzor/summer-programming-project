#!/usr/bin/env bash
# Disable Play Protect's package verifier so adb-installed sideloaded APKs
# (F-Droid Termux, Termux:X11 nightly) don't hit INSTALL_FAILED_VERIFICATION_FAILURE.
# See: 2026-07-07-disabled-package-verifier.md
set -euo pipefail

serial=192.168.87.29:46361  # adb devices -l; re-pair if stale, see wireless-adb-enabled.md

adb -s "$serial" shell "settings put global package_verifier_enable 0"
adb -s "$serial" shell "settings put global verifier_verify_adb_installs 0"
