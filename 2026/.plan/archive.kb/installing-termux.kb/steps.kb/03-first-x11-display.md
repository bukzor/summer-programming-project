# 03 -- First X11 display (the highest-risk step)

This is where the multi-year black-screen bug family lives
(`../../claims.kb/termux-x11-has-recurring-unresolved-bugs.md`). Budget up
to half the evening here; nothing after it matters until it goes green.

1. In Termux (or the ssh session):

       termux-x11 :0 &
       export DISPLAY=:0

2. On the tablet, open the Termux:X11 app. It should show an empty root
   surface, not an error toast.

3. Back in the shell:

       xclock

**Success:** an analog clock renders inside the Termux:X11 app.

Failures:
- surface stays black, no error -> `../troubleshooting.kb/black-screen.md`
- "Termux:X11 is not connected" -> `../troubleshooting.kb/x11-not-connected.md`
