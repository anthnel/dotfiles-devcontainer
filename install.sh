
# Update debian dependancies
if command -v apt-get &> /dev/null; then
  sudo apt-get update
  sudo apt-get install -y bat
fi

conda install -c conda-forge starship -y

starship preset nerd-font-symbols -o ~/.config/starship.toml

ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc
