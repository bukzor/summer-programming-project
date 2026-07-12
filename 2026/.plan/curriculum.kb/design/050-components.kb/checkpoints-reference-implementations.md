---
why:
  - ../030-requirements.kb/session-ends-runnable-and-committed.md
  - ../../technical-policy.kb/repo-layout.md
---

`session/NN/checkpoint.py` — an adult-facing (never Abby-facing) reference
implementation of each session's end state, written before that session,
runnable from repo root via `uv run python .plan/session/NN/checkpoint.py`.
Used to preview a
session, diff against a stuck `main.py`, or recover a broken state.
