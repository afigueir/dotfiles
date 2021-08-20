#!/usr/bin/bash

vol="$(pamixer --get-volume)"
mute="$(pamixer --get-mute)"

icon=""
format=""

if [[ $mute == true ]]; then
	icon=""
	format="muted"
else
	format="$vol%"
	if [[ $vol -lt 50 ]]; then
		icon=""
	else
		icon=""
	fi
fi

output="$icon $format"

echo -e $output
