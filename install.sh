#!/bin/zsh

# Update debian dependancies
if command -v apt &> /dev/null; then
  sudo apt update
  sudo apt install -y zsh-autosuggestions zsh-syntax-highlighting fzf 
fi

# install starship and the preset
conda install -c conda-forge starship -y
starship preset nerd-font-symbols -o ~/.config/starship.toml

# install fzf

fzfplugdir="$HOME/fzf-zsh-plugin"

if [[ ! -d ${fzfplugdir} ]] ; then
    git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${fzfplugdir}
fi

 
# link needed files
ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc
