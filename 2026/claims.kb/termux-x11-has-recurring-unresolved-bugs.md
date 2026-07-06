---
status: asserted
likelihood: 0.8
sources:
    - ../sources.kb/claude.md
depends:
    - ../claims.kb/termux-pygame-viable-2026.md
tags: [environment, risk]
---

Checked the actual GitHub issue tracker rather than trusting the one
"here's how to set it up" article. Findings, in order of severity:

1. **"Black screen" is a recurring, multi-year bug category**, not a
   one-off — open/recently-closed issues span years (#820, #796, #813,
   #205, #155), each with a different trigger (fresh install, re-opening
   after force-stop, a specific version) and no single universal fix.
   Official troubleshooting docs list *two* device-dependent flags
   (`-legacy-drawing`, `-force-bgra`) you may need to guess between.
2. **Mali GPU (this tablet's GPU family) has documented driver problems**
   in Termux specifically: a Zink/Vulkan segfault on Mali GPUs (workaround:
   install a software rasterizer, losing acceleration), and a more
   fundamental finding that Android's security sandboxing blocks direct
   GPU/EGL access from Termux on Mali/MediaTek chips at all. Uncertain how
   much this actually bites pygame specifically — pygame typically uses
   SDL2's software/basic-accelerated 2D path, not full OpenGL — so this is
   an amber flag, not confirmed to block a simple 2D game, but not
   confirmed clean either.
3. **The recommended install method has already shifted once**: plain
   `pip install pygame` reliably fails on Termux (missing `sdl-config`)
   and current community advice has moved from "install SDL2 dev
   packages, then pip works" to "don't use pip at all, use
   `pkg install python-pygame` from the tur-repo instead." An ecosystem
   whose own best-practice is still moving is a sign of a recipe that
   isn't fully stable yet, not a solved, thousand-times-repeated path.

None of this specifically confirms failure on Buck's exact hardware
(Dimensity 6400 / Mali-G57 MC2) — the GPU reports found are on adjacent
chips (Mali-G78, Helio G99, Dimensity 8300), not this exact one.
