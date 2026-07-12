# `pip install pygame` fails (missing sdl-config)

Expected on Termux, not a bug to fix: pip's source build can't locate SDL.
Community best practice has already shifted once (from "install SDL2 dev
packages then pip" to "don't use pip at all") -- use the prebuilt tur-repo
package:

    pkg install -y tur-repo
    pkg install -y python-pygame

If pip already half-installed a broken pygame (typically dragged in as a
pgzero dependency because `--no-deps` was forgotten):

    pip uninstall -y pygame
    pkg reinstall -y python-pygame
    pip install --no-deps pgzero
