from random import random

count = {"heads": 0, "tails": 0}


def flip():
    x = random()
    if x > 0.5:
        return "heads", x
    else:
        return "tails", x


print(flip())
