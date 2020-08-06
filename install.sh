#!/bin/bash

# Installation of packages


apt update -y && apt upgrade -y && apt install -y \
    git \
    tmux \
    htop \
    zsh \
    neovim \
    wget \
    curl

# Install Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

