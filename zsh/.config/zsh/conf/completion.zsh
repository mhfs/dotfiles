# Tracks where comp was initiated from
zstyle :compinstall filename "$HOME/.config/zsh/.zshrc"

# Install advanced completion system
autoload -Uz compinit; compinit

# Cache completions for faster loading
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/.zcompcache"

# Case insensitive completion by partial matches
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# Highlight completion selection
zstyle ':completion:*' menu select

# Partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

# My `c` shortcut for `cd ~/Work/$1`
c() { cd ~/Work/"$1"; }
_c() { _files -W ~/Work -/; }
compdef _c c
