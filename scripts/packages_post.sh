#!/bin/bash

DIR=~/.SYSTEM_CONFIG/packages/

sudo pacman -S --noconfirm --needed $(grep -v '^#' "$DIR/post.packages" | grep -v '^$')
yay -S --noconfirm --needed $(grep -v '^#' "$DIR/post_aur.packages" | grep -v '^$')

