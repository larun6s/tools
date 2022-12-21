#!/bin/bash
cb=$(git symbolic-ref --short HEAD)
git checkout $1
git pull origin $1
