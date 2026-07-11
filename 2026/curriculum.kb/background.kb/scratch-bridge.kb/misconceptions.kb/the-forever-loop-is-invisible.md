In Scratch she writes `forever` herself. pyxel has the forever loop built
in: `pyxel.run(update, draw)` calls her `def update():` then `def draw():`,
~30 times a second. She fills in what to update and draw; pyxel does the
looping. State this inversion in session 0 — it's why `update()`/`draw()`
"just run" with no visible loop around them.
