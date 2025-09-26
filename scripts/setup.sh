#!/bin/bash

DIR=~/.SYSTEM_CONFIG
cd $DIR/dotfiles

# target root and replace all
stow -t ~ -R .

# change to zsh
chsh -s /bin/zsh

