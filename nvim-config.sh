#!/bin/bash

# only for Ubuntu

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	echo "Installing the latest 'nightly' neovim."
	if [ -d ~/.config/nvim ]; then
		cp -r ~/.config/nvim ~/.config/nvim.old
		echo "Backing up old nvim config to ~/.config/nvim.old."
	fi
	cd
	sudo add-apt-repository ppa:neovim-ppa/unstable -y
	sudo apt update
	sudo apt install git make gcc ripgrep unzip xclip curl ninja-build gettext python3-pip python3.8-venv neovim npm -y
	pip install -U pynvim
	pip install 'python-lsp-server[all]' pyright
	wget https://nodejs.org/dist/v14.15.4/node-v14.15.4-linux-x64.tar.xz
	mkdir -p $HOME/tools
	tar xvf node-v14.15.4-linux-x64.tar.xz --directory=$HOME/tools
	npm install -g vim-language-server
	git clone https://github.com/hoangvietdo/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
	nvim
	echo "Finished!!!"
else
	echo "This script is only applicable to Ubuntu."
fi
