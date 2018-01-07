#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
  source /Users/$(whoami)/.bashrc
else
  source /home/$(whoami)/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
