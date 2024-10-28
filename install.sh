#!/bin/bash
git clone https://github.com/tymek-3/nvim-config ~/dotfiles/nvim

ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.ideavimrc ~/.ideavimrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

unlink ~/.config/nvim
ln -s ~/dotfiles/nvim  ~/.config/nvim

unlink ~/.config/i3
ln -s ~/dotfiles/i3  ~/.config/i3

unlink ~/.config/i3status
ln -s ~/dotfiles/i3status  ~/.config/i3status

unlink ~/.config/kitty
ln -s ~/dotfiles/kitty  ~/.config/kitty
