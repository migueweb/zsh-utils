#!/bin/bash
function success() {
    local text=$1 
    local green='\033[0;32m'
    local no_color='\033[0m'

    echo -e "${green}[+] ${text}${no_color}"
}

function error() {
    local text=$1 
    local red='\033[0;31m'
    local no_color='\033[0m'

    echo -e "${red}[-] ${text}${no_color}"
}

success "downloading zsh-utils from https://migueweb.github.io/zsh-utils/zshutils..."

curl -s -o $HOME/.zsh-utils https://migueweb.github.io/zsh-utils/zshutils 

if [[ $SHELL == */bash ]]; then # if the shell is bash
  success "installing zsh-utils..."
  echo -e "\nsource $HOME/.zsh-utils" >> $HOME/.bashrc
  source $HOME/.bashrc
  success "zsh-utils installed successfully."

elif [[ $SHELL == */zsh ]]; then # if the shell is zsh
  success "installing zsh-utils..."
  echo -e "\nsource $HOME/.zsh-utils" >> $HOME/.zshrc
  source $HOME/.zshrc
  success "zsh-utils installed successfully."
else
    error "you need to use Bash or Zsh to install zsh-utils."
    exit 1
fi


printf "
         _             _   _ _     
 _______| |__    _   _| |_(_) |___ 
|_  / __| '_ \  | | | | __| | / __|
 / /\__ \ | | | | |_| | |_| | \__ \\
/___|___/_| |_|  \__,_|\__|_|_|___/
"

echo # new line 
success "installation completed."
success "visit https://migueweb.github.io/zsh-utils for more information."