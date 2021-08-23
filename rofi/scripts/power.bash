#!/usr/bin/bash

selected=$(echo "exit
reboot
shutdown" | rofi -dmenu -p "power")

case $selected in
	"exit") killall bspwm;;
	"reboot") reboot;;
	"shutdown") shutdown -h now;;
esac
