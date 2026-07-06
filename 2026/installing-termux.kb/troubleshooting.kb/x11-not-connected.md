# "Termux:X11 is not connected"

The documented recurring connection-drop failure
(`../../sources.kb/termux-x11-pygame-howto.md`). Also doubles as the
recovery procedure exercised by `../steps.kb/07-stability-test.md`.

1. Kill stale servers in the shell:

       pkill -f termux-x11

2. Force-stop the Termux:X11 app and clear its cache
   (App info > Storage > Clear cache).

3. Restart in the right order -- server first, app second:

       termux-x11 :0 &
       export DISPLAY=:0

   then open the Termux:X11 app, then `xclock` to confirm.

4. If it recurs after reboots or OS updates, recheck the phantom-process
   settings from `../steps.kb/00-preflight.md` -- Android can silently
   revert them.
