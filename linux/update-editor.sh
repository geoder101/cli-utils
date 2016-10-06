#!/usr/bin/env bash

set -e

function dl {
  http --follow --download $1
}

function inst {
  sudo dnf install $1
}

function update {
  local url=$1
  local rpm=$2
  [ ! -f $rpm ] || rm $rpm
  dl $url
  [ -f $rpm ] && inst $rpm && rm $rpm
}

function update_code {
  update https://go.microsoft.com/fwlink/\?LinkID\=760867 ./code-*.rpm
}

function update_atom {
  update https://atom.io/download/rpm ./atom.*.rpm
}

cd /tmp/

case $1 in
  'code')
    update_code
    ;;
  'atom')
    update_atom
    ;;
  *)
    update_code
    update_atom
esac