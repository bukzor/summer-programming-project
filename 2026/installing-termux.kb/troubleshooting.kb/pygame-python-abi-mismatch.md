# `import pygame` fails with `ModuleNotFoundError` despite `pkg install python-pygame` reporting success

`dpkg -L python-pygame` shows it installed into
`.../lib/python3.1X/site-packages/pygame`, but `python --version` is a
different minor version -- tur-repo's prebuilt `python-pygame` is ABI-locked
to whatever core `python` version it was built against, and the two can
drift out of sync.

Seen once alongside a stale (Play Store fork, see
`play-store-termux-family-trap.md`) Termux app -- plausible but not
confirmed as the cause; the version gap could equally be repo freshness
at fetch time, independent of app source. Fix either way: make sure
you're on a current Termux install (`../CLAUDE.md`'s note on APK source)
and run `pkg update -y && pkg upgrade -y` before installing
`python-pygame` -- that's sufficient to resync the two repos. Confirm with
`python -c "import pygame; print(pygame.ver)"`.

If it's still mismatched after a full upgrade, tur-repo's build has
genuinely lagged the main repo's `python` bump; building pygame from
source in a `uv`-managed venv (SDL2/freetype/portmidi dev headers come
with their runtime packages, so a source build has what it needs) is the
fallback -- not attempted yet as of this writing since the upgrade alone
fixed it.
