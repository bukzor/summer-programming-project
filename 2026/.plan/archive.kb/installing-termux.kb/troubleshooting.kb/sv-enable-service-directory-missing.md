# `sv-enable` fails: "unable to change to service directory: file does not exist"

Hit after `pkg install termux-services` followed immediately by `sv-enable
sshd` (or any service) in the same session. `strace -ffe file` on the
failing command shows it `chdir("/etc/service")` -- the runit default,
not Termux's actual service dir.

Cause: `termux-services` sets `SVDIR=$PREFIX/var/service` and starts
`runsvdir` via a `profile.d` script that only runs on shell login. A
session already open when the package installed never picked it up, so
`sv`/`sv-enable` fall back to the compiled-in `/etc/service`, which
doesn't exist in Termux's sandbox.

Fix -- get a new login shell so `profile.d` re-sources itself the normal
way:

    bash -l    # lightest: new login shell, same window/scrollback

(closing and reopening the Termux app works too, but `bash -l` gets the
same new-login-shell effect without losing your session). Then retry
`sv-enable sshd`.

Note `termux-services` is optional -- it's only for autostart-on-launch.
Running bare `sshd` (no `sv-enable`) daemonizes on its own and needs none
of this.
