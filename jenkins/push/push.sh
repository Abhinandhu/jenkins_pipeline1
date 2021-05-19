#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u abhinandhu -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG abhinandhu/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push abhinandhu/$IMAGE:$BUILD_TAG
