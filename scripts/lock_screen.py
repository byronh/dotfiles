#!/usr/bin/env python

import os
import random


def lock_screen():
    home = os.path.expanduser('~/.wallpapers')
    dual_dir = os.path.join(home, '3840x1080')
    files = os.listdir(dual_dir)
    random.shuffle(files)

    command = 'i3lock -e --color=000000 -i "{}"'.format(os.path.join(dual_dir, files[0]))
    os.system(command)


if __name__ == '__main__':
    lock_screen()