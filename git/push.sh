#!/bin/bash
cb=$(git symbolic-ref --short HEAD)
if [ -z "$1" ]
  then
    git push origin $cb
  else
    git push origin $cb:$1
fi