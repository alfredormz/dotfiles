#!/bin/bash

alias watch='watch '
alias grep='grep --color'
alias psgrep='ps aux | grep'
alias ls='ls --color'
alias sl='ls'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias less='less -R'
alias du='du -h'
alias df='df -h'
alias free='free -m'
alias c='clear'
alias irc='weechat-curses'
alias h='history'
alias v='vim'
alias gnome-terminal='gnome-terminal --hide-menubar'
alias j='jobs'

alias rb='ruby'
alias irb='irb --simple-prompt --readline'
alias railsc=' pry -r ./config/environment.rb'
alias wrb="ruby -run -e httpd . -p 5000"
alias rvmp="rvm-prompt"
alias rebash='. ~/.bashrc'
alias bashrc='${EDITOR} ~/.bashrc; rebash'

alias tmux="tmux -2"
alias t='tmuxify'

alias q='exit'
alias :q='exit'
alias :wq='sudo shutdown -r now'

#git
alias gti=git
alias g=gitsh
alias fetch='git fetch'
alias rebase='git rebase'
alias wip="git add . && git ci -am 'wip'"
alias pjson='python -mjson.tool'
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias vimrc="#{EDITOR} ~/.vimrc"
alias O="cd ~/dev/overol"
alias P="cd ~/dev/overol-parsers"
