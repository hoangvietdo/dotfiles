#!/bin/zsh

# sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get clean

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Updating Config for Ubuntu"
    cp -r ~/.config/nvim Ubuntu/ 
    cp ~/.tmux.conf Ubuntu/tmux/.tmux.conf
    cp ~/.zshrc Ubuntu/oh-my-zsh/.zshrc
    cp -r ~/.config/neofetch Ubuntu/
    cp ~/.p10k.zsh Ubuntu/oh-my-zsh/.p10k.zsh

  echo "Finished!"

elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo "Updating Config for MacOS"
    cp -r ~/.config/nvim MacOS/
    cp ~/.tmux.conf MacOS/tmux/.tmux.conf
    cp ~/.zshrc MacOS/oh-my-zsh/.zshrc
    cp ~/.p10k.zsh MacOS/oh-my-zsh/.p10k.zsh

  echo "Finished!"

else
  echo "Unknown OS, please do it manually"
fi
