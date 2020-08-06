#!/bin/bash

git pull
echo "✔ dotfiles are up to date"

echo "apt update..."
apt -qq update
echo "✔ update done!"


echo "apt install base packages..."
# Installation of packages
apt -qq install -y \
    git \
    tmux \
    htop \
    zsh \
    neovim \
    wget \
    curl \
    tzdata

echo "✔ base packages are installed"

# Install Oh-my-zsh
[ -d ~/.oh-my-zsh ] || git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
[ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ] || git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
chsh -s $(which zsh)

echo "✔ oh my zsh configured!"

# Linking of files using dotbot
set -e

CONFIG="install.conf.yaml"
DOTBOT_DIR="dotbot"

DOTBOT_BIN="bin/dotbot"
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "${BASEDIR}"
git -C "${DOTBOT_DIR}" submodule sync --quiet --recursive
git submodule update --init --recursive "${DOTBOT_DIR}"

"${BASEDIR}/${DOTBOT_DIR}/${DOTBOT_BIN}" -d "${BASEDIR}" -c "${CONFIG}" "${@}"


# Install neovim plug manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Update plugins
nvim +PlugInstall +qa
