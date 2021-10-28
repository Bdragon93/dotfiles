#!/bin/sh
# Set up runtime config...
git clone git@github.com:Bdragon93/dotfiles.git ~/Projects/dotfiles

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install vim plug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -L https://get.oh-my.fish | fish
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

mkdir -p ~/Projects
cd ~/Projects/dotfiles

mkdir -p ~/.config/alacritty 
mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/colors
mkdir -p ~/.config/fish

while read f; do
	echo "Copying file $f..."
	cp -rf $(basename $f) ~/$f
done < Dotfiles
echo "Copy files done!"

brew install node
brew install tmux
brew install --cask alacritty
brew install neovim

# install tmux plugin
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

brew install fish

omf install agnoster

omf install https://github.com/FabioAntunes/fish-nvm
omf install https://github.com/edc/bass

brew install the_silver_searcher

brew install python
python -m pip install --upgrade pip
pip3 install neovim

