#!/bin/zsh

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions vscode history zsh-syntax-highlighting)

source "$ZSH/oh-my-zsh.sh"

source "$HOME/alias.zsh"
source "$HOME/exports.zsh"
[[ -r "$HOME/local-exports.zsh" ]] && source "$HOME/local-exports.zsh"

# To customize the prompt, run `p10k configure` or edit ~/.p10k.zsh.
source "$HOME/.p10k.zsh"

# nvm
source "$NVM_DIR/nvm.sh"

# Dart CLI completion
source "$HOME/.dart-cli-completion/zsh-config.zsh"

# fzf
source <(fzf --zsh)
