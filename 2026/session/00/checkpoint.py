import pyxel

WIDTH = 800
HEIGHT = 600
TITLE = "Abby's Craft"

PLAYER_NAME = "Abby"
UI_STRIP_HEIGHT = 120


def update():
    pass


def draw():
    pyxel.cls(3)
    pyxel.text(10, 10, PLAYER_NAME + "'s world", 7)
    pyxel.rect(0, HEIGHT - UI_STRIP_HEIGHT, WIDTH, UI_STRIP_HEIGHT, 1)


pyxel.init(WIDTH, HEIGHT, title=TITLE)
pyxel.run(update, draw)
