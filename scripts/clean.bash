#!/usr/bin/bash

echo "
Remove orphans packages"
yay -Rs $(yay -Qqtd)

echo "
Clean cache"
du -sh /home/user/.cache
GLOBIGNORE=i3lock
rm -rf /home/user/.cache/*
unset GLOBIGNORE
du -sh /home/user/.cache
