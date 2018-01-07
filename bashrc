#!/bin/bash

# Larger bash history
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

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

export TMUX_OPTS="-2"
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PG_HOME=/usr/local/pgsql
export PATH=$PG_HOME/bin:$PATH
export PS1='\[\033[01;32m\]\W \[\033[01;33m\]$(branch) \[\033[00;37m\]$\[\033[00m\] '

### Added by the Heroku Toolbelt
export JAVA_HOME="/opt/java"
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$HOME/anaconda/bin:$PATH
