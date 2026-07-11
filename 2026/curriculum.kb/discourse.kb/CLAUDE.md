--- # workaround: anthropics/claude-code#13003
depends:
  - Skill(llm-discourse-graph)
---

# Open discourse

What we believe about *how* to run this curriculum, distinct from `../design/`
(what's decided) and `../technical-policy.kb/` (binding rules). A claim here
is a recommendation or hypothesis, not settled — only the user resolving a
`questions.kb/` entry (adding `resolved:`) makes it a decision, at which
point promote it into `../design/` or `../technical-policy.kb/` and delete
or archive the discourse entry.

- `sources.kb/` — who asserted what (currently: the assistant's curriculum
  review)
- `questions.kb/` — open inquiries; grep for missing `resolved:` to find
  what's still undecided
- `claims.kb/` — candidate answers (recommendations), not facts
- `deductions.kb/` — the reasoning chain from observation to recommendation
