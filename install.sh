#!/bin/bash

# Install everything in pkglist
pacman -S --needed $(comm -12 <(pacman -Slq|sort) <(sort pkglist.txt) )

# Uninstall anything not in pkglist, optional
pacman -Rsu $(comm -23 <(pacman -Qq|sort) <(sort pkglist.txt))
