#!/bin/bash

DIR=~/.SYSTEM_CONFIG
cd $DIR/dotfiles

# target root and replace all
stow -t ~ -R .

# change to zsh
chsh -s /bin/zsh


# TODO: buit hacky
# and these might be overkill
#gnome-themes-extra
#plasma-desktop 
#kvantum
# gtk2
# gtk3
# gtk4
plasma-apply-colorscheme BreezeDark

# obsidian vaults
mkdir -p ~/vaults/personal
mkdir -p ~/vaults/work
