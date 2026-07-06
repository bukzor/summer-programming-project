---
kind: article
title: "Termux + Termux:X11 pygame setup (2026 working recipe)"
url: https://github.com/termux/termux-x11
---

Confirms a working 2026 recipe: Termux:X11 app (sideloaded, not on Play
Store) + `termux-x11-nightly` package + SDL2 dev packages via `x11-repo`,
then `pip install pygame` builds from source successfully. Real Linux
userland — pgzero's normal `pgzrun game.py` CLI launcher works as
documented, no Pydroid-style workaround needed. Documented rough edges:
"termux-x11 not connected" errors sometimes need force-stop + clear-cache
on both apps to resolve.
