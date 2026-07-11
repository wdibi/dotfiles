#!/bin/bash

cd "$(dirname "$0")" || exit

# homebrew install
if ! command -v brew &>/dev/null; then
    printf "Installing homebrew\n"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    printf "Homebrew already installed: %s\n" "$(brew --version | head -n 1)"
fi

# homebrew packages
printf "installing homebrew packages\n"
brew bundle --file="./brew/Brewfile"

stow --target="$HOME" --restow zsh

# macos
./macos/set-defaults.sh

mkdir -p ~/Developer ~/Desktop/screenshots
