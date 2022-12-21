#!/bin/bash
goToMain=0
pullOriginMainAndMerge=4
deletePrevBranch=8
rebasePrevBarnchWithMain=32

prevBarnch=$(git symbolic-ref --short HEAD)
main=$1

git checkout $1
git pull origin $1

git branch -D $prevBarnch

git checkout $prevBarnch
git rebase $1 -i

actions=$2
i=0
actions=echo $(($actions>>i))

while [ $actions -gt 0 ]
do
   curAction=
   echo $curAction
   i=`expr $i + 1`

done
