#!/bin/bash

branch(){
  test -d .git && git symbolic-ref HEAD 2> /dev/null | cut -d/ -f3,4
}

parse_git_dirty() {
  status=$(git status 2> /dev/null | tail -n1)
  if [[ $status == "" ]]
  then
    echo " "
  else
    if [[ $status != "nothing to commit, working directory clean" ]]
    then
      echo " ✗ "
    fi
  fi
}

branch_prompt(){
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

which_ruby(){
  rvm-prompt g
}

git_prompt_info() {
   ref=$(/usr/bin/git symbolic-ref HEAD 2>/dev/null) || return
   echo "${ref#refs/heads/}"
}

push() {
  git push origin $(branch)
}

pull() {
  git pull origin $(branch)
}

tnew(){
  session=$1
  tmux new-session -s ${session} -d
}

tatt(){
  session=$1
  tmux attach -t ${session}
}

tls(){
  tmux ls
}

rh() {
  history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}

