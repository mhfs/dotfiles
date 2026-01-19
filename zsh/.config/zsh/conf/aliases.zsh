# File listing (eza)
alias ls='eza'
alias ll='eza -l --group-directories-first --icons=always'
alias la='eza -l -a --group-directories-first --icons=always'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'

# Tools
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias cat="bat --theme='Solarized (dark)'"

# Development
alias be='bundle exec'
alias g='git'
alias d='docker'
alias dc='docker compose'
alias r='rails'

# Shell
alias reload='source $ZDOTDIR/.zshrc'

# Platform-specific aliases
[[ "$(uname)" == "Linux" ]] && alias say='espeak-ng'

# Smart cd with zoxide - falls back to regular cd for existing paths
if command -v zoxide &>/dev/null; then
  alias cd="zd"
  zd() {
    if [[ $# -eq 0 ]]; then
      builtin cd ~
    elif [[ -d "$1" ]]; then
      builtin cd "$1"
    else
      z "$@" && printf "\U000F17A9 " && pwd
    fi
  }
fi

# Quick nvim - opens current dir if no args
n() { [[ $# -eq 0 ]] && nvim . || nvim "$@"; }

# Linux xdg-open wrapper (macOS has built-in `open`)
if [[ "$(uname)" == "Linux" ]]; then
  open() { xdg-open "$@" >/dev/null 2>&1 & }
fi

# Sound effect after command (use: some_command; boop)
boop() {
  local last="$?"
  if [[ "$last" == '0' ]]; then
    sfx good
  else
    sfx bad
  fi
  return "$last"
}
