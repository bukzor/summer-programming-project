---
why:
  - ../030-requirements.kb/session-ends-runnable-and-committed.md
---

`checkpoints/session_NN.py` — an adult-facing (never Abby-facing) reference
implementation of each session's end state, written before that session,
runnable via `uv run python checkpoints/session_NN.py`. Used to preview a session,
diff against a stuck `main.py`, or recover a broken state.
