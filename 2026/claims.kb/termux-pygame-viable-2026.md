---
status: asserted
likelihood: 0.75
sources:
    - ../sources.kb/termux-x11-pygame-howto.md
depends:
    - ../claims.kb/hardware-is-android-tablet.md
tags: [environment, tools]
---

Termux + Termux:X11 is a confirmed-working, FOSS, zero-ad, zero-IAP way
to get a real Linux Python + pygame environment on this tablet. Two real
advantages over Pydroid 3: no ad model at all (not "ads removed for a
fee," never had them), and pgzero's normal `pgzrun game.py` command
works natively — no `pgzrun.go()`/marker-comment workaround needed. Real
costs: not on the Play Store (sideload Termux + Termux:X11 via F-Droid or
GitHub releases — one extra "allow unknown sources" step), more setup
steps overall (package installs, `DISPLAY` env var, launching two apps in
the right order), and documented rough edges (X11 connection drops
needing a force-stop/clear-cache fix). This is setup complexity Buck
absorbs once, not something Abby has to debug.
