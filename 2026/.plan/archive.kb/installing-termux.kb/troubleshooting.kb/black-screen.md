# Black screen in Termux:X11

The X server runs, the app opens, `xclock` exits cleanly -- but nothing
renders. Multi-year upstream bug family (termux-x11 issues #820, #796,
#813, #205, #155) with device-dependent triggers and no universal fix.
Try in order, retesting with `xclock` after each:

1. Termux:X11 app preferences: toggle **Force BGRA**.
2. Toggle **Legacy drawing** -- work through all four combinations of the
   two flags.
3. Force-stop Termux:X11 + clear its cache; restart the X server; retest.
4. Update the pair together: latest nightly APK (reinstall via adb) plus
   `pkg upgrade termux-x11-nightly` -- mismatched app/package versions are
   a known trigger.
5. Full reinstall of both APKs per `../steps.kb/01-install-apks.md`.

**Give up after 5:** log the run as `blocked` in `../runs.kb/`. This is
the known hard-failure mode; further guessing is outside the time-box, and
Pydroid remains the launch plan.
