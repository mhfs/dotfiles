#!/usr/bin/env bash
set -e
set -u
set -o pipefail

DOTFILES_DIR="$HOME/Work/mhfs/dotfiles"
if [ -d "$DOTFILES_DIR" ]; then
  cd "$DOTFILES_DIR"
  stow -t ~ mise
fi

mise install
