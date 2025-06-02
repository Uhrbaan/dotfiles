# initialize zsh
# zsh history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=/home/luclement/.cache/zsh/history

# load default bash_profile which has a lot of PATH variables.
if [ -f ~/.bash_profile ]; then
	. ~/.bash_profile
fi

# load Oh My Posh for a nicer text field.
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/uhrbaan.toml)"

# Aliases
alias ls='ls --color=auto'
alias ll='ls -l --human-readable'
alias lll='ll -a'
alias vim='nvim'
alias rm='rm -i'
alias trash='gio trash'

# Manage dotfiles with git
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
