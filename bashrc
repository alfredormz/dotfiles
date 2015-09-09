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

export GOROOT=$HOME/go
export GOPATH=$HOME/dev/gocode

export PATH=$PATH:$GOROOT/bin

export TMUX_OPTS="-2"

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PG_HOME=/usr/local/pgsql
export PATH=$PG_HOME/bin:$PATH
export PATH=$HOME/bin:$HOME/dev/tmuxify/bin:$PATH
export PS1='\[\033[01;32m\]\W \[\033[01;33m\]$(branch_prompt)\[\033[00;37m\]$\[\033[00m\] '

export MEMCACHE_SERVER='localhost'
export RAILS_COOKIE_TOKEN='some secret phrase of at least 30 characters'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export JAVA_HOME="/opt/java"
export PATH=$JAVA_HOME/bin:$PATH
