#!/usr/bin/env bash

set -e

FONT_DIR="$HOME/.local/share/fonts"
TMP_DIR="/tmp/jetbrainsmono-nerd-font"

mkdir -p "$FONT_DIR"
mkdir -p "$TMP_DIR"

cd "$TMP_DIR"

wget -O JetBrainsMono.zip \
https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip

unzip -o JetBrainsMono.zip

find . -type f -name "*.ttf" \
-exec cp {} "$FONT_DIR" \;

fc-cache -fv

echo "JetBrainsMono Nerd Font installed."
