pyxel facts that shape the design:

- `pyxel.run(update, draw)` calls `update()` then `draw()` ~30 times/second
  by default — there's no explicit loop to write (see misconception:
  the-forever-loop-is-invisible). Unlike pgzero, both functions are
  required from session 0; `update()` can be `pass` until there's state to
  change.
- No event handlers: input is polled, not pushed. Read `pyxel.btn(key)`
  (held) / `pyxel.btnp(key)` (pressed this frame) inside `update()` — there
  is no `on_key_down`/`on_mouse_down` hat-block equivalent.
- No hot reload: a code change requires stopping and rerunning
  `uv run python main.py`, not just saving.
- `import pyxel` is a plain import — no injected globals, so none of
  pgzero's IDE undefined-name warnings for magic names like `screen`.
- Coordinate origin is top-left, y grows down (see misconception:
  upside-down-stage).
- Fixed 16-color palette, no arbitrary RGB/named-color strings: colors are
  `pyxel.COLOR_BLACK/NAVY/PURPLE/GREEN/BROWN/DARK_BLUE/LIGHT_BLUE/WHITE/
  RED/ORANGE/YELLOW/LIME/CYAN/GRAY/PINK/PEACH` (indices 0-15).
- Key/mouse constants used from session 5 on: digit keys are
  `pyxel.KEY_1`..`pyxel.KEY_9`, letters `pyxel.KEY_A`; mouse buttons are
  `pyxel.MOUSE_BUTTON_LEFT`/`..._RIGHT`, position via `pyxel.mouse_x`/
  `pyxel.mouse_y`.
- `pyxel.init(..., headless=True)` runs with no window at all — pair with
  an explicit `pyxel.quit()` in `update()` for a clean automated smoke
  test; no `SDL_VIDEODRIVER=dummy` trick needed.
- This sandbox's Homebrew-linked Python can't open a real (non-headless)
  window: its bundled glibc is older than the system Mesa/GL libs pyxel's
  window needs (fails with `GLIBC_2.38' not found`). `.python-version` is
  pinned to the system interpreter (`/usr/bin/python3.13`) to work around
  it. If Abby's actual machine doesn't have this Homebrew/system split,
  the pin is harmless but may turn out to be unnecessary there.
