# Arch System Configs
**EXPECT BREAKING CHANGES** 

# Installation
1. Boot into the fresh Arch iso
2. connect internet
    - `iwctl`
    - `station wlan0 connecy <wifi name>`
2. follow `archinstall`
3. reboot into the new install
4. connected to wifi 
    - `nmcli device wifi connect <wifi-name> password <password>`
5. clone this repo into home 
    - `git clone https://github.com/cablecreek/.SYSTEM_CONFIG ~/`
6. `sh install.sh`


# BUGS

# Pending Decisions
-[] tmux vs zelij
-[] btop vs htop
-[] what to do with new package installs?
    - i.e. add to list or yolo pacman?
-[] ssdm?

# Stuff to remember
- udiskie adds external drives to: `/run/media/<usr>/`

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

# MultiOS/Multi-Partion
- use `systemd-boot` its robust and simple
- want to rename an entry? 
    - `/boot/loader/entries`
- increase auto-boot time?
    - `/boot/loader/loader.conf`

# Inspired by 
- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
- [omarchy](https://github.com/basecamp/omarchy?tab=readme-ov-file)

