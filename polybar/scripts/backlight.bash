#!/usr/bin/bash

light=($( xbacklight | awk -F'.' '{ print $1 }'))

icon=""
format="$light%"

output="$icon $format"

echo -e $output


