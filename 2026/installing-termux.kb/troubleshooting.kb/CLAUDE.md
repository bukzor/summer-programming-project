# troubleshooting.kb

Symptom-keyed playbooks, one failure mode per file, named by the symptom
you'd search for. Each file gives: what it looks like, ordered fixes
cheapest-first, and an explicit give-up point (respect the time-box).

Belongs here: failure modes actually hit in a run, or documented upstream
with enough specificity to pre-write the fix.

Does not belong: procedure steps (those are `../steps.kb/`), speculative
fixes for failures nobody has seen.

Add a file the first time a run hits an undocumented failure -- that's the
patch that makes the next run cheaper.
