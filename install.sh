#!/bin/zsh

# Update debian dependancies
if command -v apt &> /dev/null; then
  sudo apt update
  sudo apt install -y zsh-autosuggestions zsh-syntax-highlighting  
fi

# config git for line ending
git config --global core.autocrlf input

# install starship and the preset
conda install -c conda-forge starship -y
starship preset nerd-font-symbols -o ~/.config/starship.toml

# install fzf

zshplug="$HOME/.config/zsh_plugins"
fzfplugdir="$zshplug/fzf-zsh-plugin"

[[ ! -d ${zshplug} ]] && mkdir -p ${zshplug}
[[ ! -d ${fzfplugdir} ]] && git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${fzfplugdir}

 
# link needed files
ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc
