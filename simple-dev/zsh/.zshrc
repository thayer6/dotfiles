# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set Powerlevel10k as the theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# MUST STAY AT THE END - powerline10k config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
