# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Emacs keybindings
bindkey -e

# Source modular configs
source "$ZDOTDIR/conf/prompt.zsh"
source "$ZDOTDIR/conf/history.zsh"
source "$ZDOTDIR/conf/completion.zsh"
source "$ZDOTDIR/conf/aliases.zsh"

# Shell options
setopt auto_cd
setopt no_case_glob
setopt correct

# Tool initialization
command -v mise &>/dev/null && eval "$(mise activate zsh)"
command -v zoxide &>/dev/null && eval "$(zoxide init zsh)"
command -v try &>/dev/null && eval "$(try init ~/Work/tries)"
