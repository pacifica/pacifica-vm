#!/bin/bash -xe
#####################################################################
# This script is meant to be run in Travis CI
#####################################################################

set +x
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
set -x
docker push pacifica/pacifica-vm:latest
if [[ $TRAVIS_TAG ]] ; then
  docker tag pacifica-vm pacifica/pacifica-vm:latest pacifica/pacifica-vm:$TRAVIS_TAG
  docker push pacifica/pacifica-vm:$TRAVIS_TAG
fi
