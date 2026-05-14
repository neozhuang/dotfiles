#!/usr/bin/env sh
set -eu
sudo apt update
# Core build tools and package helpers.
sudo apt install -y \
    build-essential \
    cmake \
    curl \
    wget \
    rustc \
    cargo

# Archive and compression tools.
sudo apt install -y \
    unzip \
    zip \
    tar \

# Basic command-line utilities.
sudo apt install -y \
    vim \
    git \
    stow \
    file \
    tree \
    man-db \
    manpages \
    manpages-dev \

# Shell environment.

# C/C++ and native debugging toolchain.
sudo apt install -y \
    gcc \
    g++ \
    make \
    gdb \
    libc6-dev \
    linux-headers-generic

# Language runtimes and package helpers.
sudo apt install -y \
    python3 \
    python3-pip \
    python3-venv \
    python3-dev \
    perl

# Terminal emulator and desktop integration.
sudo apt install -y \
    kitty 

# Network and diagnostics tools.


# System monitoring and process inspection.


# Disk and filesystem utilities.
