---
date: 2026-07-07
kind: access
---

Added the laptop's ssh public key (`ssh-ed25519 ...bukzor@penguin`,
`~/.ssh/id_ed25519` on the laptop) to `~/.ssh/authorized_keys` for
`u0_a344` on the tablet -- previously empty (0 bytes, `sshd` install
default). Supersedes the ssh-control-socket approach floated earlier in
the session: standing key auth is simpler and, unlike a control socket
tied to one foreground master process, survives independently of any
particular terminal session.

Effect: `ssh -p 8022 u0_a344@192.168.87.29 <cmd>` from the laptop (any
process running as the `bukzor` laptop user with the key loaded in
`ssh-agent`) now succeeds with no password prompt. This is the access
channel the agent uses to drive `installing-termux.kb/steps.kb/`
non-interactively from here on -- see the operating note in
`../installing-termux.kb/CLAUDE.md`.

Verified: `ssh -p 8022 -o BatchMode=yes u0_a344@192.168.87.29 echo ok`
prints `ok` with no prompt.

Revert: on-device, empty or remove the `bukzor@penguin` line from
`~/.ssh/authorized_keys`.
