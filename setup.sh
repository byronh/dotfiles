#!/bin/bash

files=(.bashrc .gitconfig .vimrc .xinitrc .Xresources .Xmodmap)

cd

for i in "${files[@]}"
do
    ln -f -s dotfiles/$i $i
done

mkdir -p ~/.i3
ln -f -s ~/dotfiles/i3/config ~/.i3/config

mkdir -p ~/.wallpapers ~/.scripts
touch ~/.scripts/displays.sh
