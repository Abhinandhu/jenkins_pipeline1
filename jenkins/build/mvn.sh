#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/jenkins_pipeline_1

docker run --rm  -v  $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

#GOAL: mvn -B -DskipTests clean package
