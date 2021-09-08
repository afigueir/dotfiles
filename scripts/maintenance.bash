#!/usr/bin/bash

echo "
Show failed systemd services"
systemctl --failed

echo "
Show failed logfiles"
journalctl -p 3 -b

echo "
Show broken symlinks"
sudo find / -xtype l -print

echo "
Update and upgrade system"
yay -Syyu
