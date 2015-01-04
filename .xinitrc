#!/bin/bash

# Disable mouse acceleration
xset m 1 0

# Turn off beep
xset -b

# Set caps lock key as mod for i3
xmodmap ~/.Xmodmap

# Setup dual monitor
xrandr --output DVI-0 --left-of HDMI-0

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Start window manager
exec i3
