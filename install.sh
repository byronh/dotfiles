#!/bin/bash

# Install everything in wmpkgs
pacman -S --needed $(comm -12 <(pacman -Slq|sort) <(sort wmpkgs.txt) )
