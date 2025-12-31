# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Homebrew (Apple Silicon)
export PATH="/opt/homebrew/bin:$PATH"

# rbenv
eval "$(/opt/homebrew/bin/rbenv init - zsh)"

# Local bin
if [ -f "$HOME/.local/bin/env" ]; then
  . "$HOME/.local/bin/env"
fi

# Aliases
alias ls='ls -G'
alias ll='ls -lhG'
alias la='ls -lahG'

# Editor
export EDITOR='vim'

# Colors
export LSCOLORS="GxFxCxDxBxEgEdabagacad"
