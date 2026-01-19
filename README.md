# MHFS Dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Bootstrap a New Machine

### 1. Install Prerequisites

**Arch Linux:**
```bash
sudo pacman -S git stow zsh
```

**macOS:**
```bash
brew install git stow zsh
```

### 2. Clone the Repository

```bash
git clone --recursive https://github.com/mhfs/dotfiles.git ~/Work/mhfs/dotfiles
cd ~/Work/mhfs/dotfiles
```

> The `--recursive` flag initializes git submodules (powerlevel10k).

If you forgot `--recursive`:
```bash
git submodule update --init --recursive
```

### 3. Stow Packages

```bash
cd ~/Work/mhfs/dotfiles
stow -t ~ zsh ghostty mise git tmux ruby psql hypr
```

### 4. Set Zsh as Default Shell

```bash
chsh -s $(which zsh)
```

Log out and back in for the change to take effect.

### 5. Install Tmux Plugin Manager (TPM)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

Then start tmux and press `prefix + I` (Ctrl+Space, then I) to install plugins.

## Unstowing (Remove Symlinks)

```bash
cd ~/Work/mhfs/dotfiles
stow -t ~ -D zsh ghostty mise git tmux ruby psql hypr
```

## macOS: Homebrew Packages

```bash
brew bundle
```

## Ansible Playbooks

For server provisioning:

```bash
ansible-playbook -i X.X.X.X, ansible/mystuff.yml
```
