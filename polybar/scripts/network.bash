#!/usr/bin/bash

local_interface=$(route | awk '/^default/{print $NF}')

icon=""
format=""

if [[ "$local_interface" == "" ]]; then
	icon=""
	format="not connected"
else
	local_ip=$(ip addr show "$local_interface" | grep -w "inet" | awk '{ print $2; }' | sed 's/\/.*$//')
	icon=""
	format="$local_ip"
fi

output="$icon $format"

echo -e "$output"
