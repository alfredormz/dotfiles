#!/bin/bash

branch(){
  test -d .git && git symbolic-ref HEAD 2> /dev/null | cut -d/ -f3,4
}

push() {
  git push origin $(branch)
}

pull() {
  git pull -r origin $(branch)
}

rh() {
  history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}

pm() {
  pid=$1
  echo "$((`pmap -x $1 | grep "total kB" | cut -d" " -f11` / 1024))MB"
}


