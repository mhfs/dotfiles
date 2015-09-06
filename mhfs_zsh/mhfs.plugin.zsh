c() { cd ~/Code/$1; }
_c() { _files -W ~/Code -/; }
compdef _c c

cg() { cd $GOPATH/src/$1; }
_cg() { _files -W $GOPATH/src -/; }
compdef _cg cg
