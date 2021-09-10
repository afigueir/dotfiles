#!/usr/bin/bash

dir="/home/user/documents/repositories/github.com/dotfiles/rofi/scripts"

selected=$(echo "config
power
reload
screen" | rofi -dmenu -p "scripts")

case $selected in
	"config") bash $dir/config.bash;;
	"power") bash $dir/power.bash;;
	"reload") reload;;
	"screen") bash $dir/screen.bash;;
esac
