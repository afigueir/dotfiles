#!/usr/bin/bash

dir="$HOME/pictures/screenshots"
curr_date=$(date +%Y-%m-%d-%H-%M-%S)
file="$curr_date-screenshot.png"

if [[ "$1" = "select" ]]; then
  scrot -s $dir/$file 
  notify-send "Screenshot" "$file" -a "Scrot"
else
  scrot $dir/$file
  notify-send "Screenshot" "$file" -a "Scrot"
fi
