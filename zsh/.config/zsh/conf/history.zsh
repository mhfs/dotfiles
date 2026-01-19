# History file configuration
export HISTFILE="$HOME/.history"
export HISTSIZE=50000
export SAVEHIST=50000

# Up/Down arrow history search
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Save timestamp and duration with each command
setopt EXTENDED_HISTORY

# Share history across multiple zsh sessions
setopt SHARE_HISTORY

# Append to history
setopt APPEND_HISTORY

# Add commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY

# Expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST

# Do not store duplications (removes older duplicates)
setopt HIST_IGNORE_ALL_DUPS

# Ignore duplicates when searching
setopt HIST_FIND_NO_DUPS

# Remove blank lines from history
setopt HIST_REDUCE_BLANKS

# Don't save commands that start with a space (useful for sensitive commands)
setopt HIST_IGNORE_SPACE

# Show command before executing when using history expansion (e.g., !!)
setopt HIST_VERIFY
