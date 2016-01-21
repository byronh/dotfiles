export ZSH=/home/bhenze/.oh-my-zsh
ZSH_THEME="bira"
CASE_SENSITIVE="true"
DISABLE_CORRECTION="true"

plugins=(command-not-found git gulp node npm nvm jsontools sudo wd)

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/java-7-openjdk-amd64/bin:/home/bhenze/.npm-global/bin"

alias ll='ls -lha'
alias rm='rm -i'

source $ZSH/oh-my-zsh.sh

