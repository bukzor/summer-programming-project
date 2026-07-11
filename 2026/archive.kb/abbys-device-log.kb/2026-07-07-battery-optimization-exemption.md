---
date: 2026-07-07
kind: setting-change
---

Exempted both apps from battery optimization (Doze whitelist) -- prevents
Android from suspending Termux/Termux:X11 in the background, same effect
as the manual Settings > Apps > *app* > Battery > Unrestricted toggle
described in `../installing-termux.kb/steps.kb/00-preflight.md` step 3,
but done over adb instead (`dumpsys deviceidle whitelist`), so no on-device
navigation was needed. That step file is being patched to offer this as
the primary method.

Verified: `dumpsys deviceidle whitelist | grep termux` lists both
`com.termux` and `com.termux.x11`.
