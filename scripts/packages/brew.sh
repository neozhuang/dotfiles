#!/usr/bin/env sh

set -eu

if [ ! -x "/home/linuxbrew/.linuxbrew/bin/brew" ]; then
    echo "Linuxbrew 未安装，开始安装..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Linuxbrew 已安装，跳过安装"
fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
brew update

brew install \
  llvm \
  neovim \
  fzf \
  ripgrep \
  fd \
  zoxide \
  lazygit \
  yazi \
  anomalyco/tap/opencode \
  zoxide \
  tree-sitter-cli \
  marksman \
  texlab 

# lsp
brew install \
  yaml-language-server

# AI tool
brew install --cask codex
