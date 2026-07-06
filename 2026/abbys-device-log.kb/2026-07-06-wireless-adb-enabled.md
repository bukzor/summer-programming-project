---
date: 2026-07-06
kind: access
---

Wireless debugging is enabled and paired with Buck's laptop; the tablet
answered `adb devices` at `192.168.87.29:33361`.

To re-establish after a reboot (the port changes, the IP may too): tablet
Settings > Developer options > Wireless debugging shows the current
IP:port; then `adb connect <ip>:<port>`. If pairing itself is lost,
"Pair device with pairing code" there, then `adb pair <ip>:<pair-port>`.
