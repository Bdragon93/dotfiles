#!/bin/sh
# Set up runtime config...
git clone https://github.com/Bdragon93/dotfiles.git ~/Projects/dotfiles
mkdir -p ~/Projects
cd ~/Projects/dotfiles

while read f; do
	echo "Copying file $f..."
	cp -rf $f ~/
	echo "Copying vim colors $f..."
  mv ~/colors ~/.config/nvim/colors

done < Dotfiles
echo "Copy files done!"

# Install vim plug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
