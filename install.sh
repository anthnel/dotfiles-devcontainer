#!/bin/zsh

# Update debian dependancies
if command -v apt &> /dev/null; then
  sudo apt update
  sudo apt install -y zsh-autosuggestions zsh-syntax-highlighting vim httpie 
fi

# config git endline
git config --global core.autocrlf input

# install linuxbrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install sdkman
curl -s "https://get.sdkman.io" | bash

# install starship
curl -sS https://starship.rs/install.sh | sh -s -- -f

# install fzf
zshplug="$HOME/.config/zsh_plugins"
fzfplugdir="$zshplug/fzf-zsh-plugin"

[[ ! -d ${zshplug} ]] && mkdir -p ${zshplug}
[[ ! -d ${fzfplugdir} ]] && git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${fzfplugdir}

# config
starship preset pure-preset -o ${HOME}/.config/starship.toml
 
# link needed files
ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc

source ~/.zshrc

# install jdk gradle maven
sdk install java 17.0.10-tem
sdk install maven
sdk install gradle

# install tools 
brew install skaffold tilt helm kubectl k9s