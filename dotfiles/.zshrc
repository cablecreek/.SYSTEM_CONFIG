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
alias npm="pnpm"

# misc
# open man pages in nvim
export MANPAGER='nvim +Man!'

