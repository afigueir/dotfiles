#!/usr/bin/bash

selected=$(echo "exit
reboot
shutdown" | rofi -dmenu -p "power")

case $selected in
	"exit") bspc quit;;
	"reboot") reboot;;
	"shutdown") shutdown -h now;;
esac
