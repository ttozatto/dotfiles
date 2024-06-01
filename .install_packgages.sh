#!/bin/bash

# Atualiza a lista de pacotes
sudo pacman -Syu

# Instala Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Instala nushell
brew install nushell

# Instala Oh-my-posh
brew install jandedobbeleer/oh-my-posh/oh-my-posh

# Instalação de pacotes do Arch Linux
yay alacritty neovim ripgrep gcc make fzf bat

git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

# Instalação do pipx e virtualenv
sudo pacman -S python-pipx python-virtualenv

cd .config
cp alacritty ~/.config --recursive
cp nushell ~/.config --recursive
cp nvim ~/.config --recursive

echo "Todos os pacotes foram instalados com sucesso!"

