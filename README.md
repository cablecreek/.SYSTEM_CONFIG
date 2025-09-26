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

# Optional
## Connect to Github
1. run:
```sh
# generate a new key
ssh-keygen -t ed25519 -C "<your-email>" -f ~/.ssh/github_ed25519
eval "$(ssh-agent -s)"

# start agent and add keys
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github_ed25519

# view the public key
cat ~/.ssh/github_ed25519.pub
```
2. head to `https://github.com/settings/keys`
3. paste `cat ~/.ssh/github_ed25519.pub`
4. create an entry in `/.ssh/config`
```
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/github_ed25519
    IdentitiesOnly yes
```
5. test `ssh -T git@github.com`

# BUGS
- `rm -rf ~/.config/hypr` needs to run post archscript install 

# Pending Decisions
-[] telescope vs fzf-lua
-[] sddm alternative
-[] md viewer
-[] what to do with new package installs?
    - i.e. add to list or yolo pacman?

# Decisions
- markdown viewer ()
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

Excluded:
- tmux, zelij, ghostty configured (splits)
    - seems overkill with hyprland

# Stuff to remember
- udiskie adds external drives to: `/run/media/<usr>/`


# MultiOS/Multi-Partion
- use `systemd-boot` its robust and simple
- want to rename an entry? 
    - `/boot/loader/entries`
- increase auto-boot time?
    - `/boot/loader/loader.conf`

# Inspired by 
- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
- [omarchy](https://github.com/basecamp/omarchy?tab=readme-ov-file)

