# 05 -- Physical keyboard input test

The summer project's day-one milestone, run early: do the physical
keyboard's key events reach pygame cleanly
(`../../claims.kb/physical-keyboard-input-unverified.md`)?

1. Pair/attach the keyboard to the tablet; confirm it types into the
   Termux terminal first.

2. Write the test:

       cat > ~/keys.py <<'EOF'
       import pygame

       pygame.init()
       screen = pygame.display.set_mode((640, 480))
       clock = pygame.time.Clock()
       x, y = 320, 240
       running = True
       while running:
           for e in pygame.event.get():
               if e.type == pygame.QUIT:
                   running = False
               elif e.type in (pygame.KEYDOWN, pygame.KEYUP):
                   updown = "down" if e.type == pygame.KEYDOWN else "up"
                   print(updown, pygame.key.name(e.key))
                   if e.key == pygame.K_ESCAPE:
                       running = False
           held = pygame.key.get_pressed()
           x += 4 * (held[pygame.K_RIGHT] - held[pygame.K_LEFT])
           y += 4 * (held[pygame.K_DOWN] - held[pygame.K_UP])
           screen.fill((20, 20, 40))
           pygame.draw.rect(screen, (40, 200, 120), (x - 20, y - 20, 40, 40))
           pygame.display.flip()
           clock.tick(60)
       pygame.quit()
       EOF

3. Run `DISPLAY=:0 python ~/keys.py`. Hold arrows singly and in pairs
   (diagonals), tap WASD, then Escape to quit.

**Success:** every press logs a down and a matching up; two held arrows
move diagonally; the square never keeps moving after release (no stuck
keys).

Scope note: a pass verifies keyboard -> Termux:X11 -> SDL2-under-X, a
*different* input path than Pydroid's Android-native SDL backend. It
derisks the hardware and Bluetooth pairing, but only partially resolves
`physical-keyboard-input-unverified.md` for the Pydroid launch path.
