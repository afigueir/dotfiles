#!/usr/bin/bash

dir="/home/user/documents/repositories/github.com/dotfiles/rofi/scripts"

selected=$(echo "config
power" | rofi -dmenu -p "scripts")

case $selected in
	"config") bash $dir/config.bash;;
	"power") bash $dir/power.bash;;
esac
