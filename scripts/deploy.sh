#!/bin/bash -xe
#####################################################################
# This script is meant to be run in Travis CI
#####################################################################

SCRIPT_DIR=$(dirname $0)
source "${SCRIPT_DIR}/vars.sh"

if [[ "${TRAVIS_PULL_REQUEST}" != "false" ]]; then exit 0; fi
set +x
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
set -x
docker push pacifica/pacifica-vm:latest${IMG_TAG_EXT}
if [[ ${TRAVIS_TAG} ]] ; then
  docker tag pacifica/pacifica-vm:latest pacifica/pacifica-vm:${TRAVIS_TAG}${IMG_TAG_EXT}
  docker push pacifica/pacifica-vm:${TRAVIS_TAG}${IMG_TAG_EXT}
fi
