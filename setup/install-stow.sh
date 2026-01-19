#!/usr/bin/env bash
set -e
set -u
set -o pipefail

yay -S --noconfirm --needed stow

DOTFILES_DIR="$HOME/Work/mhfs/dotfiles"

# Stow misc configs that don't have their own install script
if [ -d "$DOTFILES_DIR" ]; then
  cd "$DOTFILES_DIR"
  stow -t ~ ghostty git ruby psql hypr
fi
