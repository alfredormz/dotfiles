#!/bin/bash

export HISTSIZE=1000
export HISTFILESIZE=2000
export EDITOR=vim
export PYTHONSTARTUP=$HOME/.pythonrc

shopt -s histappend

if [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
fi

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

if [ -f ~/Dropbox/private_aliases ]; then
    source ~/Dropbox/private_aliases
fi

watchps(){
  watch -n1 "ps aux | grep $1"
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PS1='\[\033[01;32m\]\W \[\033[01;33m\]$(branch_prompt)\[\033[00;37m\]$\[\033[00m\] '
