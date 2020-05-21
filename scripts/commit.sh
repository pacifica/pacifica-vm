#!/bin/bash -xe

SCRIPT_DIR=$(dirname $0)
source "${SCRIPT_DIR}/vars.sh"

docker stop pacifica-vm
docker commit pacifica-vm pacifica/pacifica-vm:latest${IMG_TAG_EXT}
docker rm pacifica-vm