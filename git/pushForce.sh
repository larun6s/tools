#!/bin/bash
cb=$(git symbolic-ref --short HEAD)
git push origin $cb -f
