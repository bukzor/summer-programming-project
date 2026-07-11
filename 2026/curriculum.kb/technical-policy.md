---
last-updated: 2026-07-09
---

# Technical policy summary

Binding rules fixed up front so no later session forces a rewrite: one file
(`main.py`), module-level vars + plain functions, no classes/type
hints/docstrings; fixed geometry constants with a reserved UI strip; world
state as a grid of block-name strings; colors as a name→color dict; one
coordinate-math helper; a pre-seeded inventory dict; shapeless recipes; tool
gating as data; vim+tmux as the editor with a five-word vocabulary and a
fire drill. Full rules and rationale in `technical-policy.kb/`.
