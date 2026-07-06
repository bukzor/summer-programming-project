--- # workaround: anthropics/claude-code#13003
requires:
    - Skill(llm-kb)
---

# installing-termux.kb

Runbook for getting Termux + Termux:X11 + pygame verified on Abby's tablet
(Lenovo Idea Tab Plus, Android 15, Dimensity 6400 / Mali-G57 MC2). Single
purpose; deliberately decoupled from the summer-project launch --
`../claims.kb/recommended-environment-pydroid-primary.md` stands regardless
of the outcome here. This is Buck's side experiment, time-boxed to one
evening per attempt (stop-loss rationale:
`../claims.kb/termux-practical-risk-estimate.md`).

## Collections

- `steps.kb/` -- the install-and-verify procedure, one ordered step per
  file. Execute in filename order; every step ends with an explicit
  success check.
- `troubleshooting.kb/` -- symptom-keyed playbooks for the known failure
  modes (`../claims.kb/termux-x11-has-recurring-unresolved-bugs.md`).
- `runs.kb/` -- one immutable file per attempt: versions, step reached,
  outcome, deviations. Schema: `runs.jsonschema.yaml`.

## Maintenance

- The steps are the living document; runs are history. When a run deviates
  from a written step, patch the step in the same sitting -- the next cold
  run must need no memory of previous ones.
- Never edit a `runs.kb/` entry after the attempt ends.
- Terminal outcomes propagate to the discourse graph; the checklist of
  which nodes to update is itself a step (`steps.kb/08-*`), not tribal
  knowledge.
