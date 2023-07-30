#!/bin/bash

# sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get clean

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Install Stable Neovim from Source"
    sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get clean
    sudo apt-get install xclip -y
    sudo apt-get install terminator -y
    sudo apt-get install python3-pip -y
    pip install -U pynvim
    pip install 'python-lsp-server[all]' pylsp-mypy python-lsp-isort python-lsp-black
    wget https://nodejs.org/dist/v14.15.4/node-v14.15.4-linux-x64.tar.xz
    mkdir -p $HOME/tools
    tar xvf node-v14.15.4-linux-x64.tar.xz --directory=$HOME/tools
    npm install -g vim-language-server
    sudo apt-get install ninja-build gettext cmake unzip curl
    git clone https://github.com/neovim/Neovim
    cd neovim 
    git checkout stable
    make CMAKE_BUILD_TYPE=RelWithDebInfo 
    sudo make install
    cd

  echo "Install Tmux, Neofetch"
    sudo apt-get install tmux -y
    sudo apt-get install neofetch -y
    sudo apt-get install figlet -y

  echo "Install zsh, oh-my-zsh, and powerlevel10k"
    sudo apt-get install zsh -y
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    chsh -s $(which zsh)

  echo "Install autojump"
    sudo apt-get install autojump -y

  echo "Downloading SFMono Nerd Font, please install it!"
    git clone https://github.com/epk/SF-Mono-Nerd-Font 

  echo "Copying Config for Ubuntu"
    cd ~/Documents/dotfiles/
    cp -r Ubuntu/nvim ~/.config/
    cp Ubuntu/tmux/.tmux.conf ~/.tmux.conf
    cp Ubuntu/oh-my-zsh/.zshrc ~/.zshrc
    cp -r Ubuntu/neofetch ~/.config/
    cp Ubuntu/oh-my-zsh/.p10k.zsh ~/.p10k.zsh
    mkdir ~/.dir_colors/ && cp Ubuntu/dir_colors/dircolors ~/.dir_colors/

  echo "Finished!"

elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo "Install Unstable Neovim"
    brew install --HEAD neovim

  echo "Install Tmux"
    brew install tmux

  echo "Install autojump"
    brew install autojump

  echo "Downloading SFMono Nerd Font, please install it!"
    git clone https://github.com/epk/SF-Mono-Nerd-Font 

  echo "Install zsh, oh-my-zsh, and powerlevel10k"
    brew install zsh
    chsh -s /usr/local/bin/zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

  echo "Copying Config for MacOS"
    cp -r MacOS/nvim ~/.config/
    cp MacOS/tmux/.tmux.conf ~/.tmux.conf
    cp MacOS/oh-my-zsh/.zshrc ~/.zshrc
    cp MacOS/oh-my-zsh/.p10k.zsh ~/.p10k.zsh

  echo "Finished!"

else
  echo "Unknown OS, please do it manually"
fi
