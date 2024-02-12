
# Update debian dependancies
if command -v apt &> /dev/null; then
  sudo apt update
  sudo apt install -y zsh-autosuggestions zsh-syntax-highlighting 
fi

conda install -c conda-forge starship -y

starship preset nerd-font-symbols -o ~/.config/starship.toml

ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc
