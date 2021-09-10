#!/usr/bin/bash

if [[ "$1" = "default" ]]; then
  xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output DP2 --off --output VIRTUAL1 --off
elif [[ "$1" = "external" ]]; then
  xrandr --output eDP1 --off --output DP1 --primary --mode 3440x1440 --pos 0x0 --rotate normal --output DP2 --off --output VIRTUAL1 --off
elif [[ "$1" = "right" ]]; then
  xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --mode 3440x1440 --pos 1920x0 --rotate normal --output DP2 --off --output VIRTUAL1 --off
elif [[ "$1" = "top" ]]; then
  xrandr --output eDP1 --primary --mode 1920x1080 --pos 760x1440 --rotate normal --output DP1 --mode 3440x1440 --pos 0x0 --rotate normal --output DP2 --off --output VIRTUAL1 --off
fi

