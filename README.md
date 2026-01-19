# MHFS Dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Bootstrap an Omarchy Machine

```bash
curl -fsSL https://raw.githubusercontent.com/mhfs/dotfiles/master/setup/install-dotfiles.sh | sh
```

Then install packages:
```bash
cd ~/Work/mhfs/dotfiles
./omarchy-setup.sh
```

Or install individual packages:
```bash
./setup/install-stow.sh
./setup/install-zsh.sh
# etc.
```

## Bootstrap a MacOS Machine
 
```bash
git clone --recursive https://github.com/mhfs/dotfiles.git ~/Work/mhfs/dotfiles
cd ~/Work/mhfs/dotfiles
brew bundle
stow -t ~ zsh ghostty mise git tmux ruby psql bin
```

## Ansible Playbooks

For server provisioning:

```bash
ansible-playbook -i X.X.X.X, ansible/mystuff.yml
```
