#!/bin/sh

DOTFILES_DIR="$HOME/Work/mhfs/dotfiles"
if [ -d "$DOTFILES_DIR" ]; then
  cd "$DOTFILES_DIR"
  stow -t ~ mise
fi

mise install
