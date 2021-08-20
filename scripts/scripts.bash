#!/usr/bin/bash

bin_dir="$LOCAL/bin"
src_dir="$DOTFILES/scripts"

chmod +x $src_dir/*

function remove_ext() {
  echo $1 | rev | cut -c6- | rev
}

if [[ "$1" == *".bash" ]]; then
  ln -sf $src_dir/$1 $bin_dir/$(remove_ext $1)
fi

