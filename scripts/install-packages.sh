#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing packages..."
if [ -f /etc/os-release ]; then
    . /etc/os-release
else
    echo "Cannot detect Linux distribution: /etc/os-release not found"
    exit 1
fi

case "$ID" in
    ubuntu|debian)
        sh "$SCRIPT_DIR/packages/ubuntu.sh"
        ;;
    fedora)
        sh "$SCRIPT_DIR/packages/fedora.sh"
        ;;
    *)
        echo "Unsupported distribution: $ID"
        exit 1
        ;;
esac

echo "Installing packages by brew..."
sh "$SCRIPT_DIR/packages/brew.sh"

echo "Packages Done."
