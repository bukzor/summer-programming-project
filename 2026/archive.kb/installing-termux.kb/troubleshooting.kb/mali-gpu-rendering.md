# Segfault or GL/EGL errors (Mali GPU)

Known family (`../../claims.kb/termux-x11-has-recurring-unresolved-bugs.md`):
Zink/Vulkan segfaults on Mali GPUs, and Android sandboxing blocking direct
GPU access from Termux on Mali/MediaTek chips. This tablet's Mali-G57 MC2
is untested; adjacent chips are confirmed affected. Plain 2D pygame should
stay on SDL's software path and never touch any of this -- if it segfaults
anyway:

1. Force software rendering everywhere:

       export SDL_RENDER_DRIVER=software
       export LIBGL_ALWAYS_SOFTWARE=1

   (Add to `~/.bashrc` once confirmed needed.)

2. In game scripts: plain `pygame.display.set_mode((w, h))` only -- no
   `pygame.OPENGL`, no `vsync=1`.

3. If some tool insists on GL: `pkg install mesa` and keep
   `LIBGL_ALWAYS_SOFTWARE=1` (software rasterizer).

A software-rendered 640x480 game at ~60fps is a full pass for this
project's purposes -- do not spend time-box chasing hardware acceleration.
