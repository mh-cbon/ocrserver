#!/bin/sh

set -x
set -e

u="/home/ubuntu"
d="go/src/github.com/otiai10/ocrserver"

if [ "$HOME" = "$u" ]; then
  go run ~/$d/main.go
else
  vagrant up --provider=virtualbox
  vagrant ssh -c "sh ~/$d/start.sh"
fi
