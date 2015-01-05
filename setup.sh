#!/bin/bash

files=(.bash_profile .bashrc .conkyrc .gitconfig .i3status.conf .tmux.conf .vimrc .xinitrc .Xresources .Xmodmap)

cd

for i in "${files[@]}"
do
    ln -f -s dotfiles/$i $i
done

mkdir -p ~/.i3
ln -f -s ~/dotfiles/i3/config ~/.i3/config

mkdir -p ~/.wallpapers ~/.scripts
touch ~/.scripts/displays.sh

sudo usermod -aG log byron
