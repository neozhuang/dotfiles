#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo $SCRIPT_DIR

# Packages 
sh "$SCRIPT_DIR/install-packages.sh"

# Fonts
sh "$SCRIPT_DIR/install-fonts.sh"

# Links
sh "$SCRIPT_DIR/link.sh"

echo "All Done."
