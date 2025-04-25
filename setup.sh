!#/bin/bash

cd ~/

sudo -s
apt update && upgrade -y
apt install \
    clang \
    stow \
    tmux \ 
    zoxide 

# Neovim installation
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz

# Pull dotfile configuration
git clone git@github.com:bnakarmi/dotfiles.git
cd dotfiles
git submodule update --init --recursive
stow bashrc nvim tmux vim

cd ~/.config/nvim
git pull 

cd ~/
