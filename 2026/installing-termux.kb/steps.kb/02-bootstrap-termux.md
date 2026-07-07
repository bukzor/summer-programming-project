# 02 -- Bootstrap packages inside Termux

Only step 1 requires typing on the tablet; step 2 moves you back to the
laptop keyboard for everything after -- with one exception: `passwd`
inside step 2 must also be typed on-device (interactively), since sshd
isn't reachable yet at that point.

1. Open Termux on the tablet and type:

       termux-wake-lock
       pkg update -y && pkg upgrade -y

   Alternative -- driving this from the laptop with nobody touching the
   tablet, via blind input injection (see "Operating note" in
   `../CLAUDE.md`: only safe when Abby is not actively using the device,
   since it foregrounds Termux and steals input). Untested against this
   device -- verify on a low-stakes command before trusting it:

   1. `adb shell am start -n com.termux/.app.TermuxActivity` to foreground it.
   2. `adb push` a small script (built on the laptop, so no fragile
      inline escaping of `adb shell input text`, which requires literal
      `%s` for spaces) to somewhere Termux can read it and redirect its
      own output/exit marker to somewhere plain `adb shell` can read back
      -- confirm both paths (Termux hasn't run `termux-setup-storage` yet
      at this point in the procedure, so don't assume `/sdcard` is
      reachable from inside Termux without checking first).
   3. `adb shell input text '<one short command that runs the script>'`
      then `adb shell input keyevent 66` (Enter).
   4. Poll for completion by reading back the output/marker file with
      plain `adb shell` (safe at any time) -- don't type blind again
      while a previous injection might still be running.

   This doesn't reach the interactive `passwd` prompt in step 2 cleanly
   either way -- do that one by hand even when using injection for the
   rest.

2. (Recommended) Drive the rest from the laptop over ssh. `openssh` is the
   only package here -- `sshd` below is the daemon command it provides,
   not a second package; running it bare daemonizes on its own, no
   service manager needed:

       pkg install -y openssh
       passwd
       sshd
       whoami

   Then from the laptop: `ssh -p 8022 <whoami-output>@192.168.87.29`.

   `openssh`'s postinst suggests `termux-services` for sshd
   autostart-on-launch -- optional, skip it unless you want that. If you
   do install it, `sv-enable sshd` in the same still-open session fails
   with "unable to change to service directory"; see
   `../troubleshooting.kb/sv-enable-service-directory-missing.md`.

3. Repos and packages:

       pkg install -y x11-repo tur-repo
       pkg install -y termux-x11-nightly xorg-xclock python python-pygame

   `python-pygame` is the prebuilt tur-repo package. Do NOT
   `pip install pygame` -- the source build fails on Termux; see
   `../troubleshooting.kb/pygame-via-pip-fails.md`. If it installs but
   won't `import`, see `../troubleshooting.kb/pygame-python-abi-mismatch.md`
   (a full `pkg update -y && pkg upgrade -y` first avoids it).

4. Pygame Zero -- pure Python, no pip into system `python`. Directory-scoped
   via `uv`, in a venv that inherits the system `pygame` install rather than
   rebuilding it:

       uv venv --system-site-packages /data/data/com.termux/files/home/pgzero-project/.venv
       uv pip install --python /data/data/com.termux/files/home/pgzero-project/.venv --no-deps pgzero
       /data/data/com.termux/files/home/pgzero-project/.venv/bin/python -c "import pgzero, pygame; print(pygame.ver)"

   Later steps that run `python`/`pgzrun` mean this venv's
   `.../pgzero-project/.venv/bin/python` and `.../bin/pgzrun`, not the bare
   system commands.

   (`--no-deps` because pgzero declares pygame as a dependency and pip
   would try to rebuild it from source. pgzero also needs `numpy` at
   import time (`pygame.sndarray`, pulled in by `pgzero/tone.py`) --
   `pkg install -y python-numpy` system-wide, same as `python-pygame`; the
   venv's `--system-site-packages` picks it up, no `pip`/`uv pip` needed.
   Verify with `import pgzero, pygame`, not `import pgzrun` -- `pgzrun.py`
   deliberately raises if imported from an interactive interpreter rather
   than run as a script or via the `pgzrun` CLI.)

**Success:** the final `python -c` prints a pygame version with no
traceback.
