#!/bin/bash

# only for Ubuntu

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	echo "Installing the latest 'nightly' neovim."
	if [ -d ~/.config/nvim ]; then
		cp ~/.config/nvim ~/.config/nvim.old
		echo "Backing up old nvim config to ~/.config/nvim.old."
	fi
	cd
	sudo add-apt-repository ppa:neovim-ppa/unstable -y
	sudo apt update
	sudo apt install git make gcc ripgrep unzip xclip python3-pip neovim -y
	git clone https://github.com/hoangvietdo/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
	nvim
	echo "Finished!!!"
else
	echo "This script is only applicable to Ubuntu."
fi
