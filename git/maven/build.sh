#!/bin/bash
if [ $1 -eq "clean" ]
  then
    mvn clean install -Dmaven.test.skip=true -T 16 dependency:sources dependency:resolve -Dclassifier=javadoc
  else
    mvn install -Dmaven.test.skip=true -T 16 dependency:sources dependency:resolve -Dclassifier=javadoc
fi