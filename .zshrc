# initialize zsh
# zsh history
HISTSIZE=1000
SAVEHIST=1000
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
HISTFILE=/home/luclement/.cache/zsh/history

# load default bash_profile which has a lot of PATH variables.
if [ -f ~/.bash_profile ]; then
	. ~/.bash_profile
fi

# Prompt (using oh-my-posh)
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/uhrbaan.toml)"

# Autocompletion
autoload -Uz compinit
compinit
# _comp_options+=(globdots) # Show hidden files in completion

# Smarter cd (autojump)
eval "$(zoxide init zsh)"

# Aliases
alias ls='ls --color=auto'
alias ll='ls -l --human-readable'
alias lll='ll -a'
alias vim='nvim'
alias rm='rm -i'
alias trash='gio trash'

# Manage dotfiles with git
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# syntax highlighting
source "$HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"

ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# Inline autosuggestions
source "$HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"

