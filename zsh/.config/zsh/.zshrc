# Personal scripts
export PATH="$HOME/.local/bin:$PATH"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Emacs keybindings
bindkey -e

# Fix key bindings for common keys
bindkey '^[[3~' delete-char   # Delete
bindkey '^[[H'  beginning-of-line  # Home (xterm)
bindkey '^[OH'  beginning-of-line  # Home (application mode)
bindkey '^[[F'  end-of-line        # End (xterm)
bindkey '^[OF'  end-of-line        # End (application mode)

# Source modular configs
source "$ZDOTDIR/conf/prompt.zsh"
source "$ZDOTDIR/conf/history.zsh"
source "$ZDOTDIR/conf/completion.zsh"
source "$ZDOTDIR/conf/aliases.zsh"

# Shell options
setopt auto_cd              # cd by typing directory name
setopt no_case_glob         # Case-insensitive globbing
setopt correct              # Spell check commands
setopt auto_pushd           # Push directory to stack on cd
setopt pushd_ignore_dups    # Don't push duplicates to stack
setopt pushd_silent         # Don't print stack after pushd/popd

# Tool initialization
command -v mise &>/dev/null && eval "$(mise activate zsh)"
command -v zoxide &>/dev/null && eval "$(zoxide init zsh)"
command -v try &>/dev/null && eval "$(try init ~/Work/tries)"
