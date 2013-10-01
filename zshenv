# Ensure homebrew path is before system stuff
export PATH="/opt/boxen/homebrew/bin:$PATH"

# Setup node and npm executables
export NODE_PATH="/usr/local/lib/node"
export PATH="/usr/local/share/npm/bin:$PATH"

# Setup and init rbenv
export PATH="/opt/boxen/rbenv/bin:$PATH"
eval "$(rbenv init -)"

export EDITOR=vim

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export RUBY_GC_MALLOC_LIMIT=60000000
export RUBY_FREE_MIN=200000
