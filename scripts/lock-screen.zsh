#!/bin/zsh

DEFAULT_IMGS="$HOME/.wallpapers"

if [[ -z $1 ]] ; then
    img_dir=$DEFAULT_IMGS
else
    img_dir=$1
fi;


randfile=$(ls $img_dir | sort -R | head -n1)
i3lock -e --color=000000 -i $img_dir/$randfile
