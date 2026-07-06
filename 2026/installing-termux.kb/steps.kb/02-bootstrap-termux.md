# 02 -- Bootstrap packages inside Termux

Only step 1 requires typing on the tablet; step 2 moves you back to the
laptop keyboard for everything after.

1. Open Termux on the tablet:

       termux-wake-lock
       pkg update -y && pkg upgrade -y

2. (Recommended) Drive the rest from the laptop over ssh:

       pkg install -y openssh
       passwd
       sshd
       whoami

   Then from the laptop: `ssh -p 8022 <whoami-output>@192.168.87.29`.

3. Repos and packages:

       pkg install -y x11-repo tur-repo
       pkg install -y termux-x11-nightly xorg-xclock python python-pygame

   `python-pygame` is the prebuilt tur-repo package. Do NOT
   `pip install pygame` -- the source build fails on Termux; see
   `../troubleshooting.kb/pygame-via-pip-fails.md`.

4. Pygame Zero -- pure Python, safe via pip, but keep pip's hands off
   pygame:

       pip install --no-deps pgzero
       python -c "import pgzrun, pygame; print(pygame.ver)"

   (`--no-deps` because pgzero declares pygame as a dependency and pip
   would try to rebuild it from source. If the import fails on some other
   missing pure-Python dependency, `pip install` that one by name.)

**Success:** the final `python -c` prints a pygame version with no
traceback.
