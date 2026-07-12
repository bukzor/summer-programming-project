# Abby's Craft

A Minecraft-like built with Abby (age 10), session by session, in Python +
[pyxel](https://github.com/kitao/pyxel). Coded live with her at the
keyboard — see `curriculum.kb/design/060-deliverables.kb/session-facilitation-protocol.md`
for how a session runs.

## Run it

```
uv run python main.py
```

`main.py` doesn't exist yet — it's created live with Abby in session 0
(`curriculum.kb/design/060-deliverables.kb/session-00-make-the-window-yours.md`),
not pre-written. After that, it evolves in place across every session.

Adult-facing reference implementations of each session's end state live
under `session/NN/checkpoint.py`, runnable the same way
(`uv run python session/00/checkpoint.py`) — never shown to Abby directly.

## Where the plan lives

The full design tower, decision graph, and curriculum are in
`curriculum.kb/` (start at `curriculum.kb/design.md` and
`curriculum.kb/technical-policy.md`) and the root `*.kb/` discourse graph
(`questions.kb/`, `claims.kb/`, `deductions.kb/`, `sources.kb/`).

`ideas.md` is Abby's feature backlog; `sessions.log` is the running record
of what happened each session.
