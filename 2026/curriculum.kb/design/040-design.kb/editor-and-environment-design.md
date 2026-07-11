---
why:
  - ../020-goals.kb/abby-authors-the-code.md
  - ../030-requirements.kb/session-fits-a-45-60-minute-timebox.md
---

Editor: vim in one tmux pane, a shell in the other, mouse enabled in both,
adult alongside. Vim is taught by reps inside session 0's already-trivial
Python (see `../060-deliverables.kb/session-00-make-the-window-yours.md`),
not as separate instruction — every predict-run cycle is also a vim rep.

The risk vim adds is silent modal-state corruption (a keypress in normal
mode mutates the buffer with no error message), which would otherwise force
the adult to grab the keyboard and violate authorship. The fix is staging
the recovery as a game the first time, on purpose, so the accidental version
is a drill she already knows — see
`../../background.kb/scratch-bridge.kb/misconceptions.kb/files-dont-autosave.md`
and `../../technical-policy.kb/vim-and-tmux-setup.md`.
