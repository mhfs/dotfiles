# Loads and customizes `pure` prompt

fpath+=($ZDOTDIR/prompts/pure)

zstyle :prompt:pure:prompt:success color 'green'
zstyle :prompt:pure:git:dirty color '088'

# Avoids the empty line at top of terminal for the `pure` prompt
print() {
  [ 0 -eq $# -a "prompt_pure_precmd" = "${funcstack[-1]}" ] || builtin print "$@";
}
autoload -U promptinit; promptinit
prompt pure

# Makes `pure` a single line prompt
prompt_newline='%666v'
PROMPT=" $PROMPT"
