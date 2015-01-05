[[ $- != *i* ]] && return

export EDITOR=vim

export PS1="\[\e[00;37m\]\n[\[\e[0m\]\[\e[00;33m\]\@\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;32m\]\u@\H\[\e[0m\]\[\e[00;37m\]: \[\e[0m\]\[\e[00;35m\]\w\[\e[0m\]\[\e[00;37m\]]\n\\$ \[\e[0m\]"

alias ls='ls -F --color=auto'
alias ll='ls -lhaF --color=auto'

alias cp="cp -ri"
alias mv="mv -i"
alias rm="rm -i"

alias bashrc='vim ~/.bashrc && source ~/.bashrc'
alias pacman='sudo pacman --color auto'
alias pacfreeze='pacman -Qqen > ~/dotfiles/pkglist.txt'
alias systemctl='sudo systemctl'

alias officevpn='cd ~/vpn && sudo openvpn --writepid /var/run/openvpn/office.pid office.ovpn'
alias devvpn='cd ~/vpn && sudo openvpn --writepid /var/run/openvpn/dev.pid dev.ovpn'
