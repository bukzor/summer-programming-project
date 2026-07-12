Framings to use when a Scratch block has a clean Python equivalent — "this
is the Python spelling of ⟨block she knows⟩":

| She knows (Scratch) | Python spelling |
|---|---|
| clicking the green flag | `uv run python main.py` |
| the stage | the window |
| `set score to 0` / `change score by 1` | `score = 0` / `score += 1` |
| `repeat 20` | `for col in range(20):` — a repeat that also counts on its fingers and lets you use the count |
| blocks inside a C-block's mouth (`repeat`, `if`) | **indentation** — indenting a line IS putting it inside the mouth; the `:` is the C-block's top lip |
| `if ⟨⟩ then / else` | `if ...:` / `else:` |
| hat blocks (`when key pressed`, `when stage clicked`) | inside `def update():`, `if pyxel.btnp(pyxel.KEY_X):` — the check itself is the hat block; there's no separate `on_`-named function, you ask "did it just happen?" every frame instead |
| My Blocks (custom block with an input) | `def craft(item):` |
| pointy Boolean blocks like ⟨touching?⟩ | a function that `return`s True/False — she's building her own pointy block to put inside an `if` |
| `join "wood: " (count)` | `f"wood: {count}"` |
| Scratch lists | Python lists — but see `misconceptions.kb/zero-indexing.md` |
| `play sound` | `pyxel.play(channel, sound_id)` |
| a sprite and its costume | an image bank + `pyxel.blt(...)` (art-day session) |
| `say` block | `pyxel.text(...)` on the stage; `print(...)` says it to the terminal — use `print` as "make it say what it's thinking" for debugging |
| `⟨list⟩ contains ⟨thing⟩?` | `in` |
