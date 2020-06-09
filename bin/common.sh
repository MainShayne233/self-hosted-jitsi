#!/usr/bin/env bash

error() {
  echo "$@" 1>&2
}

validate_binaries() {
  for prog in "$@"
  do
    if ! [ -x "$(command -v $prog)" ]; then
      error "$prog is not installed"
      exit 1
    fi
  done
}
