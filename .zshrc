# load default bash_profile which has a lot of PATH variables.
if [ -f ~/.bash_profile ]; then
	. ~/.bash_profile
fi

# load Oh My Posh for a nicer text field.
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/uhrbaan.toml)"

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ls='ls --color=auto'
alias ll='ls -l --human-readable'
alias lll='ll -a'
alias vim='nvim'

# Manage dotfiles with git
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
