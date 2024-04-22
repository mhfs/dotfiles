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

Ansbile
-------

To run ansible playbooks on specific hosts:

```
ansible-playbook -i X.X.X.X, ansible/mystuff.yml
```
