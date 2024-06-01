#!/bin/bash

# Atualiza a lista de pacotes
sudo pacman -Syu

# Instala Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> ~/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
yes | sudo pacman -S base-devel

# Instala nushell
brew install nushell

# Intalação de pacotes
yes | sudo pacman -S yay neovim ripgrep make \
  fzf bat python-pipx neofetch 

# Instala gcc
yay gcc

# Instala Oh-my-posh
brew install jandedobbeleer/oh-my-posh/oh-my-posh

# Instalação do virtualenv
pipx install virtualenv

yes | cp -rf ./config/nushell ~/.config
yes | cp -rf ./config/nvim ~/.config

echo "Todos os pacotes foram instalados com sucesso!"

