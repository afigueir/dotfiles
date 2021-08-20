#!/usr/bin/bash

current=$(pactl get-sink-volume 0 | awk 'NR==1{print $5}' | sed 's/.$//')

if [[ "$1" = "up" ]]; then
	[[ $current -lt 100 ]] && pactl set-sink-volume 0 +5% 
elif [[ "$1" = "down" ]]; then
	pactl set-sink-volume 0 -5%
elif [[ "$1" = "mute" ]]; then
	pactl set-sink-mute 0 toggle
else
	echo "Invalid argument: $1"
fi
