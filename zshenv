# Source boxen if present
if [ -e "/opt/boxen/env.sh" ]
then
  source /opt/boxen/env.sh
fi

export EDITOR=vim

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export RUBY_GC_MALLOC_LIMIT=60000000
export RUBY_FREE_MIN=200000

export GOPATH=~/my/golang
