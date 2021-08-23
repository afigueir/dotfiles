#!/usr/bin/bash

edit="alacritty -e nvim"
dir="/home/user/documents/repositories/github.com/dotfiles"

selected=$(echo "alacritty
bash
bspwm
dunst
fancylockscreen
htop
neovim
picom
polybar
ranger
rofi
rofi-style
sxhkd
tmux
xinit
xresources" | rofi -dmenu -p "config")

case $selected in
	"alacritty") $edit $dir/alacritty/alacritty.yml;;
	"bash") $edit $dir/bash/bashrc;;
	"bspwm") $edit $dir/bspwm/bspwmrc;;
	"dunst") $edit $dir/dunst/dunstrc;;
	"fancylockscreen") $edit $dir/fancylockscreen/config;;
	"htop") $edit $dir/htop/htoprc;;
	"neovim") $edit $dir/nvim/init.vim;;
	"picom") $edit $dir/picom/picom.conf;;
	"polybar") $edit $dir/polybar/config;;
	"ranger") $edit $dir/ranger/rc.conf;;
	"rofi") $edit $dir/rofi/config;;
	"rofi-style") $edit $dir/rofi/style.rasi;;
	"sxhkd") $edit $dir/sxhkd/sxhkdrc;;
	"tmux") $edit $dir/tmux/tmux.conf;;
	"xinit") $edit $dir/xorg/xinitrc;;
	"xresources") $edit $dir/xorg/Xresources;;
esac
