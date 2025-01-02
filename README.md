MHFS Dotfiles
=============

Collection of my dotfiles.

Usage
-----

Link files:

```
./install.sh
```

ZSH
---

- Link zsh/.zshenv to $HOME
- Link zsh/ to ~/.config/zsh
- Init submodules

NVim
----

- Link nvim to ~/.config/nvim
- Link neovide to ~/.config/neovide

Ghostty
-------

- Link ghostty to ~/.config/ghostty

Ansbile
-------

To run ansible playbooks on specific hosts:

```
ansible-playbook -i X.X.X.X, ansible/mystuff.yml
```
