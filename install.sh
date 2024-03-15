#!/bin/zsh

# Update debian dependancies
if command -v apt &> /dev/null; then
  sudo apt update
  sudo apt install -y zsh-autosuggestions zsh-syntax-highlighting httpie 
fi

# config git endline
git config --global core.autocrlf input


# install k9s
go install github.com/derailed/k9s@latest

# install tilt
curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash

# install starship
curl -sS https://starship.rs/install.sh | sh


# install fzf

zshplug="$HOME/.config/zsh_plugins"
fzfplugdir="$zshplug/fzf-zsh-plugin"

[[ ! -d ${zshplug} ]] && mkdir -p ${zshplug}
[[ ! -d ${fzfplugdir} ]] && git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${fzfplugdir}

# config
starship preset pure-preset -o ${HOME}/.config/starship.toml
 
# link needed files
ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc
