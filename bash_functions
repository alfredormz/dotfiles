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

git_prompt_info() {
   ref=$(/usr/bin/git symbolic-ref HEAD 2>/dev/null) || return
   echo "${ref#refs/heads/}"
}

push() {
  git push origin $(branch)
}

pull() {
  git pull -r origin $(branch)
}

tnew(){
  tmux -2 new-session -s $1 -d
}

tatt(){
   tmux -2 new-session -As $(basename $PWD | tr . -)
}

tls(){
  tmux ls
}

rh() {
  history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}

toggle_menu_bar() {
  show=$(gconftool --get /apps/gnome-terminal/profiles/Default/default_show_menubar)
  if [ $show == "false" ];
  then
    gconftool --type boolean --set /apps/gnome-terminal/profiles/Default/default_show_menubar true
  else
    gconftool --type boolean --set /apps/gnome-terminal/profiles/Default/default_show_menubar false
  fi
}

pm() {
  pid=$1
  echo "$((`pmap -x $1 | grep "total kB" | cut -d" " -f11` / 1024))MB"
}

suspend(){
  sh -c "dbus-send --type=method_call --dest=org.gnome.ScreenSaver /org/gnome/ScreenSaver org.gnome.ScreenSaver.Lock && dbus-send --system --print-reply --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend"
}

