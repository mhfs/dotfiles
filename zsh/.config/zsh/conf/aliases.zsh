alias ls='eza'
alias ll='eza -l --group-directories-first --icons=always'
alias la='eza -l -a --group-directories-first --icons=always'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'

alias ff="fzf --preview 'bat --style=numbers --color=always {}'"

alias be='bundle exec'
alias g='git'
alias reload="source $ZDOTDIR/.zshrc"
alias cat="bat --theme='Solarized (dark)'"

alias d='docker'
alias r='rails'

alias say='espeak-ng'

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

n() { if [ "$#" -eq 0 ]; then nvim .; else nvim "$@"; fi; }
open() {
  xdg-open "$@" >/dev/null 2>&1 &
}
