#!/bin/bash

DIR=~/.SYSTEM_CONFIG
cd $DIR/dotfiles

# target root and replace (allows for refreshing)
stow -t ~ -R *

