#!/bin/bash
if [ ! -e ~/dotfiles/nvim ]; then
	git clone https://github.com/tymek-3/nvim-config ~/dotfiles/nvim
else
	git -C ~/dotfiles/nvim pull
fi

dotfiles=( .zshrc .tmux.conf .ideavimrc .gitconfig )
for file in ${dotfiles[@]}; do
	ln -sf ~/dotfiles/${file} ~/${file}
	echo "${file} linked"
done

directories=( nvim i3 i3status kitty )
for dir in ${directories[@]}; do
	if [ -L ~/.config/${dir} ]; then
		unlink ~/.config/${dir}
        echo "${dir} unlinked"
    elif [ -d ~/.config/${dir} ]; then
		mv ~/.config/${dir} ~/.config/!old.${dir}
        echo "~/.config/${dir} renamed to ~/.config/!old.${dir}"
	fi

	ln -s ~/dotfiles/${dir}  ~/.config/${dir}
    echo "${dir} linked"
done
