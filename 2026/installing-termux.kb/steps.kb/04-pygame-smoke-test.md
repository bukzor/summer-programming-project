# 04 -- Pygame smoke test

1. Write the test from the ssh session:

       cat > ~/smoke.py <<'EOF'
       import pygame

       pygame.init()
       print("driver:", pygame.display.get_driver())
       screen = pygame.display.set_mode((640, 480))
       clock = pygame.time.Clock()
       x, dx = 0, 4
       running = True
       while running:
           for e in pygame.event.get():
               if e.type == pygame.QUIT:
                   running = False
           x = (x + dx) % 640
           screen.fill((20, 20, 40))
           pygame.draw.rect(screen, (240, 180, 40), (x, 220, 40, 40))
           pygame.display.flip()
           clock.tick(60)
       print("fps:", clock.get_fps())
       pygame.quit()
       EOF

2. Run it:

       DISPLAY=:0 python ~/smoke.py

**Success:** a window appears in Termux:X11, the rectangle sweeps smoothly,
exit prints fps near 60, no segfault.

Segfault or GL/EGL errors -> `../troubleshooting.kb/mali-gpu-rendering.md`
