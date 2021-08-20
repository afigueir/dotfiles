#!/usr/bin/bash

bat_type=($( acpi | awk -F':' '{ print $2 }'))
bat_type=${bat_type::-1}
bat_charge=($( acpi | awk -F',' '{ print $2 }'))
bat_charge=${bat_charge::-1}
bat_remain=($( acpi | awk -F',' '{ print $3 }'))

icon=""
format=""
remain=""

if [[ $bat_type == "Discharging" ]]; then
	remain="$bat_remain"
	if [[ $bat_charge -lt 5 ]]; then
		icon=""
		format="$bat_charge%"
	elif [[ $bat_charge -lt 10 ]]; then
		icon=""
		format="$bat_charge%"
	elif [[ $bat_charge -lt 30 ]]; then
		icon=""
		format="$bat_charge%"
	elif [[ $bat_charge -lt 60 ]]; then
		icon=""
		format="$bat_charge%"
	elif [[ $bat_charge -lt 100 ]]; then
		icon=""
		format="$bat_charge%"
	fi
elif [[ $bat_type == "Charging" ]]; then
	icon=""
	remain=""
	format="$bat_charge%"
fi

output="$icon $format $remain"

echo -e $output


