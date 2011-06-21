# Put any custom function files in ~/.zsh/custom/functions
fpath=($ZSH/custom/functions $fpath)
autoload -U $ZSH/custom/functions/*(:t)
