# 07 -- Stability and cold-start reproducibility

What matters for real use isn't "worked once" but "still works on day 3"
-- X11 connection drops are the documented recurring failure
(`../../sources.kb/termux-x11-pygame-howto.md`).

While a game from steps 04-06 is running:

1. Switch to another app and back.
2. Screen off, wait 30 seconds, screen on.
3. Deliberately break it: force-stop the Termux:X11 app, then recover
   using only `../troubleshooting.kb/x11-not-connected.md` as written.

Then, on a **later day**, the cold-start test:

4. Reboot the tablet. Following only steps 03-06 as written -- no memory,
   no improvisation -- get a pygame window running. Time it.

**Success:** the game survives 1-2 (or recovers with at most an X-server
restart); the recovery playbook works as written; cold start to running
game takes under 2 minutes; every deviation you had to improvise got
patched back into the step files.
