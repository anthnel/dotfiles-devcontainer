eval "$(starship init zsh)"

# Aliases
[[ -f $HOME/dotfiles/.aliases ]] && source $HOME/dotfiles/.aliases


# fzf
zshplug="$HOME/.config/zsh_plugins"
fzfplugdir="$zshplug/fzf-zsh-plugin"


# variables
unset RUBY_VERSION

# options
setopt share_history

# PATH
export FZF_PATH=${HOME}/.config/fzf
export PATH=${fzfplugdir}/bin:${FZF_PATH}:$PATH

[[ -f ${fzfplugdir}/fzf-zsh-plugin.plugin.zsh ]] && source ${fzfplugdir}/fzf-zsh-plugin.plugin.zsh

# plugins
#plugins=(
#  git
#  zsh-autosuggestions
#  zsh-syntax-highlighting
#  fast-syntax-highlighting
#  zsh-autocomplete
#  fzf-zsh-plugin
#)
