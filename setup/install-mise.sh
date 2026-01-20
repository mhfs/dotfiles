#!/usr/bin/env bash
set -e
set -u
set -o pipefail

DOTFILES_DIR="$HOME/Work/mhfs/dotfiles"
if [ -d "$DOTFILES_DIR" ]; then
  cd "$DOTFILES_DIR"
  stow -t ~ mise
fi

# Fetch mise age key from 1Password
AGE_KEY_PATH="$HOME/.config/mise/age.txt"
if [ ! -f "$AGE_KEY_PATH" ]; then
  echo "Fetching mise age key from 1Password..."
  mkdir -p "$(dirname "$AGE_KEY_PATH")"
  op document get "mise-age-key" --account "MHFS" --out-file "$AGE_KEY_PATH"
  chmod 600 "$AGE_KEY_PATH"
fi

mise install
