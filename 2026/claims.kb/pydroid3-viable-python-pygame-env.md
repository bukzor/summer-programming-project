---
status: asserted
likelihood: 0.8
sources:
    - ../sources.kb/pydroid-play-store.md
depends:
    - ../claims.kb/hardware-is-android-tablet.md
tags: [environment, tools]
---

Pydroid 3 (free Android app, Play Store) is a real CPython 3 IDE with
real files and free built-in pygame 2 support — offline-capable after
first install. This is the closest match on this hardware to "a real dev
environment," which is what made Python the pick over Scratch in the
first place (`../deductions.kb/why-pygame-zero.md`).

Known caveats:
- Audio (`pygame.mixer`) is a known trouble spot on Android — fine for a
  starter project (silent games first), revisit if she wants sound later.
- Free tier shows an ad after each run — see
  `../claims.kb/pydroid-ads-fire-after-every-run.md` for specifics; ad
  removal is no longer a simple one-time ~$10 purchase as of 2026.
- Pygame Zero specifically needs a workaround: its normal `pgzrun game.py`
  command-line launcher doesn't apply inside Pydroid. Use the documented
  in-script alternative instead — end the script with `import pgzrun;
  pgzrun.go()`. Also add a `# Pydroid run pygame` marker as the first line,
  since Pydroid's auto-detection of "which mode to run in" appears to key
  off literal `import pygame` text, which won't appear in a script that
  only does `import pgzrun`.
