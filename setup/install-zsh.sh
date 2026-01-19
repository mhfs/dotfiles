#!/bin/sh

yay -S --noconfirm --needed zsh

DOTFILES_DIR="$HOME/Work/mhfs/dotfiles"
if [ -d "$DOTFILES_DIR" ]; then
  cd "$DOTFILES_DIR"
  stow -t ~ zsh
fi

ZSH_PATH=$(which zsh)

# Check if zsh is already the default shell
if [ "$SHELL" = "$ZSH_PATH" ]; then
  echo "Zsh is already your default shell."
else
  # Add zsh to /etc/shells if not already there
  if ! grep -q "^$ZSH_PATH$" /etc/shells; then
    echo "$ZSH_PATH" | sudo tee -a /etc/shells >/dev/null
  fi

  # Change the default shell to zsh
  chsh -s "$ZSH_PATH"

  echo "Default shell changed to zsh. Please log out and log back in for the change to take effect."
fi
