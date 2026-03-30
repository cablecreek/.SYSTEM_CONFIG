# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY

# alias
alias vim="nvim"
alias l="ls -al --color=auto"

# podman over docker 
alias docker=podman
# podman for AWS sam
alias SAM_CLI_CONTAINER_COMMAND=podman
export DOCKER_HOST=unix:///run/user/$(id -u)/podman/podman.sock

# misc
# open man pages in nvim
export MANPAGER='nvim +Man!'

# starship for nicer prompt
eval "$(starship init zsh)"

. "$HOME/.local/share/../bin/env"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# opencode
export PATH=/home/cablecreek/.opencode/bin:$PATH

# add github key to ssh agent
# eval "$(keychain --eval --quiet ~/.ssh/github_ed25519)"

# Start the SSH agent if it's not already running, but don't load any keys yet
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval "$(ssh-agent -s)" > /dev/null
fi
