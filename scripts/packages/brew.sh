#!/usr/bin/env sh
set -eu

brew update
brew install \
  llvm \
  neovim \
  fzf \
  ripgrep \
  fd \
  zoxide \
  lazygit \
  yazi
