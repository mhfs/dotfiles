#!/usr/bin/env bash
set -e
set -u
set -o pipefail

REPO_DIR="$HOME/Work/mhfs/dotfiles"

# Check if the repository already exists
if [ -d "$REPO_DIR" ]; then
  echo "Repository '$REPO_DIR' already exists. Skipping clone"
else
  mkdir -p "$HOME/Work/mhfs"
  if ! gh repo clone mhfs/dotfiles "$REPO_DIR" -- --recursive; then
    echo "Failed to clone the repository."
    exit 1
  fi
fi
