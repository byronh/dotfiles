#!/usr/bin/env python

import os
import random
import time


def set_wallpaper():
    home = os.path.expanduser('~/.wallpapers')
    single_dir = os.path.join(home, '1920x1080')
    dual_dir = os.path.join(home, '3840x1080')

    if random.random() < 0.65:
        files = os.listdir(single_dir)
        random.shuffle(files)
        command = 'feh --no-fehbg --bg-fill "{}" "{}"'.format(os.path.join(single_dir, files[0]),
                                                              os.path.join(single_dir, files[2]))
    else:
        files = os.listdir(dual_dir)
        random.shuffle(files)
        command = 'feh --bg-max --no-xinerama "{}"'.format(os.path.join(dual_dir, files[0]))
    os.system(command)


if __name__ == '__main__':
    set_wallpaper()
    time.sleep(300)