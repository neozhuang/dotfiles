#!/usr/bin/env sh
set -eu

sudo dnf check-update || true

# Core build tools and package helpers.
sudo dnf install -y \
    @development-tools \
    cmake \
    curl \
    wget \
    procps-ng \
    rust \
    cargo 

# Archive and compression tools.
sudo dnf install -y \
    unzip \
    zip \
    tar \
    xz \
    p7zip \
    p7zip-plugins \
    unrar

# Basic command-line utilities.
sudo dnf install -y \
    vim \
    git \
    stow \
    file \
    tree \
    man-db \
    man-pages

# Shell environment.


# C/C++ and native debugging toolchain.
sudo dnf install -y \
    gcc \
    gcc-c++ \
    make \
    gdb \
    glibc-devel \
    kernel-headers \
    kernel-devel

# Language runtimes and package helpers.
sudo dnf install -y \
    python3 \
    python3-pip \
    python3-devel \
    pipx \
    perl

# Common native development libraries.


# Terminal emulator and desktop integration.


# Network and diagnostics tools.


# System monitoring and process inspection.


# Disk and filesystem utilities.
