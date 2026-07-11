# 06 -- Pygame Zero native launcher

Confirms the claimed Termux advantage over Pydroid: the stock `pgzrun`
CLI works as documented, no marker-comment/`pgzrun.go()` workaround
(`../../claims.kb/termux-pygame-viable-2026.md`).

1. Write a minimal pgzero game (note: no imports -- `Rect`, `screen`,
   `WIDTH` are pgzero's injected builtins, which is the point of the
   test):

       cat > ~/pz.py <<'EOF'
       WIDTH, HEIGHT = 640, 480
       box = Rect((300, 220), (40, 40))

       def draw():
           screen.clear()
           screen.draw.filled_rect(box, "orange")

       def update():
           box.x = (box.x + 2) % WIDTH
       EOF

2. Run it, using the venv from `02-bootstrap-termux.md` step 4 (not a
   bare system-wide `pgzrun`):

       DISPLAY=:0 /data/data/com.termux/files/home/pgzero-project/.venv/bin/pgzrun ~/pz.py

**Success:** the window renders and animates, launched by the unmodified
CLI on an unmodified script.
