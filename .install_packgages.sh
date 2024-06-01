#!/bin/bash

# Atualiza a lista de pacotes
sudo pacman -Syu

# Instalação de pacotes do Arch Linux
sudo pacman -S alacritty nushell neovim ripgrep gcc make fzf bat

# Instalação do pipx e virtualenv
sudo pacman -S python-pipx python-virtualenv

# Instalação do Oh My Posh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyposh/ohmyposh/master/tools/install.sh)"

echo "Todos os pacotes foram instalados com sucesso!"

