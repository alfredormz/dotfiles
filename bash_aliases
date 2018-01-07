#!/bin/bash

alias grep='grep --color'
alias psgrep='ps aux | grep'
alias less='less -R'
alias l='ls -hlaGF'
alias du='du -h'
alias df='df -h'
alias free='free -m'
alias h='history'
alias v='vim'
alias j='jobs'

alias rb='ruby'
alias irb='irb --simple-prompt --readline'
alias wrb="ruby -run -e httpd . -p 5000"
alias rvmp="rvm-prompt"
alias rebash='. ~/.bashrc'
alias bashrc='${EDITOR} ~/.bashrc; rebash'

alias t='tmuxify'

alias q='exit'
alias :q='exit'
alias :wq='sudo shutdown -r now'

alias gti=git
alias fetch='git fetch'
alias rebase='git rebase'
alias wip="git add . && git ci -am 'wip'"
alias pjson='python -mjson.tool'
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias vimrc="#{EDITOR} ~/.vimrc"
