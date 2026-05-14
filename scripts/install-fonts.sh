#!/usr/bin/env bash

set -e

FONT_NAME="JetBrainsMono Nerd Font"
FONT_FILE_NAME="JetBrainsMono"

# -----------------------------
# 检测字体是否已经安装
# -----------------------------
if fc-list | grep -qi "$FONT_NAME"; then
    echo "$FONT_NAME already installed."
    exit 0
fi

# -----------------------------
# 路径
# -----------------------------
FONT_DIR="$HOME/.local/share/fonts/$FONT_FILE_NAME"

TMP_DIR="$(mktemp -d)"
ZIP_FILE="$TMP_DIR/$FONT_FILE_NAME.zip"

DOWNLOAD_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/${FONT_FILE_NAME}.zip"

trap 'rm -rf "$TMP_DIR"' EXIT

# -----------------------------
# 安装字体
# -----------------------------
mkdir -p "$FONT_DIR"

wget -O "$ZIP_FILE" "$DOWNLOAD_URL"

unzip -o "$ZIP_FILE" -d "$FONT_DIR"

fc-cache -fv

echo "$FONT_NAME installed successfully."
