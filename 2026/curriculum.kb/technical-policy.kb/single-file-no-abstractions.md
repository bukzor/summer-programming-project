---
force: must
why:
  - ../design/040-design.kb/single-file-module-level-architecture.md
---

One file, `main.py`, run as `uv run python main.py`. Module-level variables
and plain functions only — no classes, no type hints, no docstrings in
Abby's code. Target ≤ ~200 lines by end of the core arc.
