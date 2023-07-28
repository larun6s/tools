#!/bin/bash
echo $@
cb=$(git symbolic-ref --short HEAD)
git commit -am "Interim"
git checkout 6si-main
git pull origin 6si-main
git checkout -b $1 6si-main