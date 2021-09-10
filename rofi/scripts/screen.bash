#!/usr/bin/bash

selected=$(echo "default
external
right
top" | rofi -dmenu -p "screen")

case $selected in
	"default") screen default;;
	"external") screen external;;
	"right") screen right;;
	"top") screen top;;
esac
