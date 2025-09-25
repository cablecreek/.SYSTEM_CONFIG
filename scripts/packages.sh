#!/bin/bash

DIR=~/.SYSTEM_CONFIG/packages/

# base installs via pacman
sudo pacman -S --noconfirm --needed $(grep -v '^#' "$DIR/base-ui.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed $(grep -v '^#' "$DIR/base-languages.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed $(grep -v '^#' "$DIR/base-utils.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed $(grep -v '^#' "$DIR/base-apps.packages" | grep -v '^$')

# aur via yay
yay -S --noconfirm --needed $(grep -v '^#' "$DIR/aur-apps.packages" | grep -v '^$')
