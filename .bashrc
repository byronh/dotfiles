[[ $- != *i* ]] && return

export EDITOR=vim

export PS1="\[\e[00;37m\]\n[\[\e[0m\]\[\e[00;33m\]\@\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;32m\]\u@\H\[\e[0m\]\[\e[00;37m\]: \[\e[0m\]\[\e[00;35m\]\w\[\e[0m\]\[\e[00;37m\]]\n\\$ \[\e[0m\]"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
source /usr/bin/virtualenvwrapper.sh
source /usr/share/doc/pkgfile/command-not-found.bash

alias stopx='pkill X'

alias ls='ls -F --color=auto'
alias ll='ls -lhaF --color=auto'

alias cp="cp -ri"
alias mv="mv -i"
alias rm="rm -i"

alias bashrc='vim ~/.bashrc && source ~/.bashrc'
alias pacman='sudo pacman --color auto'
alias pacfreeze='pacman -Qqen > ~/dotfiles/pkglist.txt'
alias poweroff='sudo systemctl poweroff'

alias fixsteam='find ~/.steam/root/ \( -name "libgcc_s.so*" -o -name "libstdc++.so*" -o -name "libxcb.so*" \) -print -delete'
