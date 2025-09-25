# Arch System Configs
**EXPECT BREAKING CHANGES** 

- archinstall script with a hyperland desktop
- stow for dotfile symlinks 

# Installation
1. Boot into the fresh Arch iso
2. ensure we are connected to the internet
    - `nmcli device wifi connect <wifi-name> password <password>`
2. install via archinstall scripts with the base config 
    - `curl/wget`
    - `archinstall --config archinstall_base.json`
    - unsure you have configured:
        1. `Authentication` - root and 1 other super user
        2. `Disk configuration` - partitions, etc.
        3. And any locality based options (it is configured for Perth, Australia...)
5. reboot
6. clone this repo into home 
7. ``


## Decisions
tmux vs zelij
btop vs htop
what to do with new package installs?
    - i.e. add to list or yolo pacman?

## may not be needed?
hyperpolkitagent

# Must have:
- settings manager (systemsettings)
- network (network-manager-applet)
- bluetooth (blueberry)
- file manager (dolphin)
- terminal(ghostty)
- volume control (pavucontrol)
- notifications (mako)
- app launcher (wofi)
- status bar (waybar)
- wallpaper (hyprpaper)
- screenshots (hyprshot)
- text editor (nvim)
- disk utils (gnome-disk-utility)
- wallpaper (hyprpaper)

# tweaks
- fonts
- themes

# Inspired by 
- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
- [omarchy](https://github.com/basecamp/omarchy?tab=readme-ov-file)

# License

