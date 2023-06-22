#!/usr/bin/env bash

alias docs="cd ~/Documents"
alias ..="cd .."
alias ~="cd ~"

alias mv="mv -i"
alias mkdir="mkdir -p"
alias df="df -h"
alias l="ls -lahgo --group-directories-first"

alias bashconfig="vim $HOME/.bashrc"
alias aliases="cat $HOME/.bashrc"
alias reload="source ~/.bashrc"

alias gs="git status"
alias push="git push"
alias pull="git pull"
alias stash="git stash"
alias pop="git stash pop"

alias used='history | awk '\''{$1="";print substr($0,2)}'\'' | sort | uniq -c | sort -n | tail -n 25'

alias myip='curl http://ipecho.net/plain; echo'

take() {
    mkdir $1
    cd $1
}

