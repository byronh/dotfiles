#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && vlock -a

