---
date: 2026-07-07
kind: access
reverts: 2026-07-07-ssh-authorized-key-added.md
---

Re-established laptop -> tablet ssh access after
`2026-07-07-termux-reinstalled-via-fdroid.md` wiped `~/.ssh` and changed
the app's UID (`u0_a346`).

On-device: `pkg add openssh termux-services`, `bash -l`, `sv-enable
sshd`, `passwd` (temporary password). From the laptop: `ssh-keygen -R
'[192.168.87.29]:8022'` (stale host key), then `ssh-add -L | ssh -p 8022
u0_a346@192.168.87.29 'cat >> ~/.ssh/authorized_keys'`. Then on-device
`passwd -d` -- pubkey-only, no password auth.

Verified: `ssh -p 8022 -o BatchMode=yes u0_a346@192.168.87.29 whoami`
prints `u0_a346` with no prompt.
