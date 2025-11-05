# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export EDITOR=nvim
export VISUAL=nvim

export HISTFILE="$HOME/.history"
export HISTSIZE=10000
export SAVEHIST=10000

# Temp walkaround for pg rubygem issue
export PGGSSENCMODE=disable

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Sets emacs mode
bindkey -e

source "$ZDOTDIR/conf/prompt.zsh"
source "$ZDOTDIR/conf/history.zsh"
source "$ZDOTDIR/conf/completion.zsh"
source "$ZDOTDIR/conf/aliases.zsh"

# Sandbox for options I'm not sure I'll keep
# auto change dir when valid path is entered without cd
set -o auto_cd
set -o no_case_glob
set -o correct
# set -o correct_all

eval "$(mise activate zsh)"
