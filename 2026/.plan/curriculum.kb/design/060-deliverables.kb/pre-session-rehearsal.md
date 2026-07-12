---
why:
  - ../050-components.kb/checkpoints-reference-implementations.md
  - ../030-requirements.kb/session-fits-a-45-60-minute-timebox.md
  - ../020-goals.kb/explain-on-demand.md
  - ../020-goals.kb/predict-before-run.md
---

Standing pre-session ritual (user, 2026-07-12): before session NN, the
adult runs the session as Abby — same editor and environment (vim+tmux,
mouse, restricted to her five-word vim vocabulary — see
`../../technical-policy.md`), same edit→save→run loop.

**Procedure:**

1. Start from her actual starting state: copy the previous session's
   `../../../session/NN-1/checkpoint.py` to `../../../session/NN/checkpoint.py`
   and work on that copy.
2. Follow the session entry's **Build** in order, exactly as written,
   predicting before every run — `predict-before-run.md` applies to the
   rehearsal too.
3. Hit the **deliberate bug** for real and read the traceback cold, the
   way she'll have to.
4. Time it. Adult wall-clock × ~2.5-3 is the starting estimate of her
   pace (calibrate the multiplier against `../../../sessions.log` after
   the first real sessions). If the estimate busts
   `session-fits-a-45-60-minute-timebox.md`, raise an `NN`/`NNb` split in
   `../../discourse.kb/` rather than trimming live.
5. What you finish with IS that session's checkpoint — confirm it runs
   from repo root: `uv run python .plan/session/NN/checkpoint.py`.

**Harvest, don't just verify:** anywhere you stumbled, guessed, or wanted
docs, she'll stall harder. Check whether it's a predicted misconception
(`../../background.kb/scratch-bridge.kb/misconceptions.kb/`) and add it if
new; where the Build's prose turned out ambiguous, tighten the session
entry while it's fresh.

The rehearsal never touches `projects/` — her `main.py` only changes with
her hands on it (`../020-goals.kb/abby-authors-the-code.md`,
`../020-goals.kb/her-domain-stays-hers.md`).

Session 0's Part A — the no-computer planning conversation — has no
child role to rehearse; review its agenda
(`../../../claims.kb/session-zero-agenda.md`) instead, and rehearse only
Part B.
