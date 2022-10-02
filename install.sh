#!/bin/zsh

# sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get clean

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Install Unstable Neovim"
    sudo apt-get install software-properties-common
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install neovim
    sudo apt install python3-neovim
    sudo apt-get install xclip

  echo "Install Tmux, Neofetch"
    sudo apt-get install tmux
    sudo apt-get install neofetch
    sudo apt-get install figlet

  echo "Install zsh, oh-my-zsh, and powerlevel10k"
    sudo apt-get install zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

  echo "Copying Config for Ubuntu"
    cp -r Ubuntu/nvim ~/.config/nvim
    cp Ubuntu/tmux/.tmux.conf ~/.tmux.conf
    cp Ubuntu/oh-my-zsh/.zshrc ~/.zshrc
    cp -r Ubuntu/neofetch ~/.config/neofetch
    cp Ubuntu/oh-my-zsh/.p10k.zsh ~/.p10k.zsh

  echo "Finished!"

elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo "Install Unstable Neovim"
    brew install --HEAD neovim

  echo "Install Tmux"
    brew install tmux

  echo "Install zsh, oh-my-zsh, and powerlevel10k"
    brew install zsh
    chsh -s /usr/local/bin/zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

  echo "Copying Config for MacOS"
    cp -r MacOS/nvim ~/.config/nvim
    cp MacOS/tmux/.tmux.conf ~/.tmux.conf
    cp MacOS/oh-my-zsh/.zshrc ~/.zshrc
    cp MacOS/oh-my-zsh/.p10k.zsh ~/.p10k.zsh

  echo "Finished!"

else
  echo "Unknown OS, please do it manually"
fi
