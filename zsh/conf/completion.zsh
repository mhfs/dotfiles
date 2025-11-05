# Tracks where comp was initiated from
zstyle :compinstall filename "$HOME/.config/zsh/.zshrc"

# Install advanced completion system
autoload -Uz compinit; compinit

# Enables case insensitive completion by partial matches when hitting tab
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# Enables highlighting of completion results
zstyle ':completion:*' menu select

# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

# My `c` shortcut for `cd ~/Code/$1`
c() { cd ~/Work/$1; }
_c() { _files -W ~/Work -/; }
compdef _c c
