eval "$(starship init zsh)"

# Aliases
[[ -f $HOME/dotfiles/.aliases ]] && source $HOME/dotfiles/.aliases

# plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fast-syntax-highlighting
  zsh-autocomplete
)

# fzf

fzfplugdir=$HOME/fzf-zsh-plugin

[[ -f $fzfplugdir/fzf-zsh-plugin.plugin.zsh ]] && source $fzfplugdir/fzf-zsh-plugin.plugin.zsh

unset RUBY_VERSION

export PATH=$fzfplugdir/bin:$PATH
