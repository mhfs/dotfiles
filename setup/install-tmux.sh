#!/usr/bin/env bash
set -e
set -u
set -o pipefail

yay -S --noconfirm --needed tmux

DOTFILES_DIR="$HOME/Work/mhfs/dotfiles"
if [ -d "$DOTFILES_DIR" ]; then
  cd "$DOTFILES_DIR"
  stow -t ~ tmux
fi

# Install Tmux Plugin Manager (TPM)
if [ ! -d "$HOME/.config/tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
fi
