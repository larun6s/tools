#!/bin/bash
cb=$(git symbolic-ref --short HEAD)
git fetch origin $1:$1 && git checkout $1
if [ $2 -eq 1 ]
  then
    echo "Back to $cb"
    git checkout $cb
fi