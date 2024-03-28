#!/bin/zsh

# Update debian dependancies
if command -v apt &> /dev/null; then
  sudo apt update
  sudo apt install -y zsh-autosuggestions zsh-syntax-highlighting vim httpie 
fi

if command -v git &> /dev/null; then
  # config git endline
  git config --global core.autocrlf input
  # git user info
  git config --global user.name "anthoni"
  git config --global user.email "anthnel@proton.me"
  
fi 

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

