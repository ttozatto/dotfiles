#!/bin/bash

# Atualiza a lista de pacotes
pacman -Syu

# Instala Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> ~/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Instala nushell
brew install nushell

# Instala Oh-my-posh
brew install jandedobbeleer/oh-my-posh/oh-my-posh

# Intala yay
pacman -S yay

# Instalação de pacotes do Arch Linux
yay alacritty neovim ripgrep gcc make fzf bat python-pipx neofetch

# Instalação do virtualenv
pipx install virtualenv

cd .config
cp -rf alacritty ~/.config
cp -rf nushell ~/.config
cp -rf nvim ~/.config

echo "Todos os pacotes foram instalados com sucesso!"

