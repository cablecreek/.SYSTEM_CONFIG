# Arch System Configs
this is my arch config, don't expect huge relability... 
Concepts:
- keybindings need to work well between environmments
    - hyprland: `<SUPER> <KEY>`
    - Application: `<CTR> <KEY>`
    - eg. close window: `<SUPER> W`, zen browser `<CTR> W`, nvim `<CTR> W + <key>`

## Installation
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

## nvim 
> [!IMPORTANT]
> the nvim config has been added as a `git subtree` - this allows for the nvim repo to be independent
> additional commands are needed for `push` and `pull` for  the `subtree`
> use `task push` 

- push update to nvim repo: 
    - `git subtree push --prefix=dotfiles/.config/nvim nvim main`
    - i.e. its executing -> `git subtree push --prefix <dir> <remote> <branch>`
- pull: 
    - `git subtree pull --prefix=dotfiles/.config/nvim nvim main --squash`
    - i.e. `git subtree pull --prefix <dir> <remote> <branch> --squash`
- [nvim repo](https://github.com/cablecreek/nvim)
- The following was executed for the nvim git subtree setup
```sh
git remote add nvim git@github.com:cablecreek/nvim.git
git subtree add --prefix=dotfiles/.config/nvim nvim main --squash
git push
```

## Optional
### Connect to Github
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

**troubleshooting**
1. did you clone https or ssh?
    - `git remote -v` 
    - is it `https` or `git@github`, https and ssh respectively?
    - `git remote set-url origin <ssh-gh-url>`

2. permissions issue? make sure they are set correctly
```sh
chmod 700 ~/.ssh
chmod 600 ~/.ssh/config
chmod 600 ~/.ssh/github_ed25519.pub
```

## Decisions
- settings manager (systemsettings)
- network (network-manager-applet)
- bluetooth (blueberry)
- file manager (nautilus)
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
- openrgb for hardware leds
Excluded:
- tmux, zelij, ghostty configured (splits)
    - seems overkill with hyprland

## FYI
- udiskie adds external drives to: `/run/media/<usr>/`
- list running hyperland clients - `hyprctl clients`
    - essential for windowrules!

## MultiOS/Multi-Partion
- use `systemd-boot` its robust and simple
- want to rename an entry? 
    - `/boot/loader/entries`
- increase auto-boot time?
    - `/boot/loader/loader.conf`

**troubleshooting**
- `sudo cfdisk /dev/nvme0n1` for resizing and fixing partitions
- `lsblk -f` - for uuid info

## BUGS
- `rm -rf ~/.config/hypr` needs to run post archscript install 

## Inspired by 
- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
- [omarchy](https://github.com/basecamp/omarchy?tab=readme-ov-file)

