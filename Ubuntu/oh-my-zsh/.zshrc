# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
eval `dircolors /home/vietdo/.dir_colors/dircolors`

# pnpm
export PNPM_HOME="/home/vietdo/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

export PATH="$HOME/.local/bin:$PATH"

# comp_prog
export PATH="$HOME/Documents/comp_prog/scripts:$PATH"

export TERM=xterm-256color

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="ghost"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm.dd.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias p='python3'
alias clc='clear'
alias v='nvim'
alias vim='nvim'
alias lsa='ls -la'
alias lg='lazygit'
# ----------------------------------------
alias viet='source ~/.zshrc'
alias vietzsh='nvim ~/.zshrc'
alias vietupdate='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean && sudo apt clean'
alias vimopt='nvim ~/.config/nvim/lua/core/options.lua'
alias vimmap='nvim ~/.config/nvim/lua/core/keymappings.lua'
alias vimplug='nvim ~/.config/nvim/lua/plugins/plugin-manager.lua'
alias vietkitty='nvim ~/.config/kitty/kitty.conf'
alias cdconf='cd ~/.config/nvim/lua/plugins/configs'
alias viettmux='nvim ~/.tmux.conf'
alias of='nautilus .'
# alias runUE_Editor='~/UnrealEngine/./Engine/Binaries/Linux/UE4Editor'

# recordmydesktop shortcut
alias recordmywindow='window_id=`xwininfo | grep "Window id" | sed -e "s@.*Window id: \([0-9a-fA-Fx]*\).*@\1@"`; recordmydesktop --no-wm-check --workdir /home/vietdo/Videos --no-sound --windowid $window_id'

# ----------------------------------------
function cd {
  builtin cd "$@" && ls -F
}
function lsg {
  lsa | grep "$1"
}
function runUE(){
  ~/UnrealEngine/./Engine/Binaries/Linux/UE4Editor ~/AirSim/Unreal/Environments/"$1"/"$1".uproject
}
function fixUE(){
  ~/UnrealEngine/Engine/Build/BatchFiles/Linux/Build.sh Linux Development -Project=/home/viet/AirSim/Unreal/Environments/"$1"/"$1".uproject -TargetType=Editor
}
function runAS(){
  ~/AirSim/build_release/output/bin/"$1"
}
# ----------------------------------------
export EDITOR='lvim'
export VISUAL='$EDITOR'

# ROS1 source
#alias noetic="source /opt/ros/noetic/setup.zsh; source ~/AirSim/ros/devel/setup.zsh; echo \"Noetic is Activated!\""
alias noetic="source /opt/ros/noetic/setup.zsh; source ~/AirSim/ros/devel/setup.zsh;source ~/catkin_ws/devel/setup.zsh; source ~/catkin_ws_lidar/devel/setup.zsh; echo \"Noetic is Activated!\""

# ROS1 source
alias foxy="source /opt/ros/foxy/setup.zsh; source ~/AirSim/ros2/install/setup.zsh; echo \"Foxy is Activated!\""

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

###############
clear
h=`date +%H`
if [ $h -lt 12 ]; then
  echo "Good Morning,"
elif [ $h -lt 18 ]; then
  echo "Good Afternoon,"
else
  echo "Good Evening,"
fi

neofetch --ascii "$(figlet "Viet")"

# Auto Jump
. /usr/share/autojump/autojump.sh

echo "Please choose ROS1 (Noetic) / ROS2 (Foxy)!"
noetic
# echo $ROS_PACKAGE_PATH

# unsetopt correct_all

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/vietdo/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/vietdo/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/vietdo/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/vietdo/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
