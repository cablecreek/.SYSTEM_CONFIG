#!/bin/bash

DIR=~/.SYSTEM_CONFIG
cd $DIR/dotfiles

# remove existing configs
rm -rf ~/.config/hypr

# target root and replace all
stow -target ~ -restow .

# change to zsh
chsh -s /bin/zsh

