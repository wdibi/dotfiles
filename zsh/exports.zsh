#!/usr/bin/env zsh

export LC_ALL="en_US.UTF-8"
export LANG="en_US"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.opencode/bin:$PATH"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac

# nvm
export NVM_DIR="$HOME/.nvm"
