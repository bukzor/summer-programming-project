# runs.kb

Immutable attempt log: one file per attempt, named `YYYY-MM-DD.md` (suffix
`-2` for a second attempt the same day). Frontmatter per
`../runs.jsonschema.yaml`; body records exact APK/package versions
installed, deviations from `../steps.kb/` as written, error text worth
keeping, and time spent.

Write the entry the moment the attempt ends -- success, blocked, or
time-boxed out -- while terminal scrollback still exists. Never edit an
entry afterward; corrections go in a new entry or as patches to
`../steps.kb/`.
