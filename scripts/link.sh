#!/usr/bin/env bash

set -euo pipefail

DOTFILES_DIR="$HOME/dotfiles"

cd "$DOTFILES_DIR"

PACKAGES=(
    bash
    git
    kitty
    neofetch
    nvim
    vim
)


# rm default config file to avoid conflict
# bash
rm -f ~/.bashrc
rm -f ~/.bash_aliases
rm -f ~/.bash_logout

# git
rm -f ~/.gitconfig
rm -f ~/.fdignore
rm -f ~/.rgignore

mkdir -p ~/.config

# kitty
rm -rf ~/.config/kitty

# neofetch
rm -rf ~/.config/neofetch

# nvim
rm -rf ~/.config/nvim

# vim
rm -f ~/.vimrc
rm -rf ~/.vim


for pkg in "${PACKAGES[@]}"; do
    echo "Stowing $pkg..."
    stow -v "$pkg"
done

echo "Link Done."
