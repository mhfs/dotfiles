#!/usr/bin/env bash
set -e
set -u
set -o pipefail

stow -t ~ waybar
omarchy-restart-waybar
