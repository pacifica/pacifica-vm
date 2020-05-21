#!/bin/bash -xe

SCRIPT_DIR=$(dirname $0)
source "${SCRIPT_DIR}/vars.sh"

docker run -d --name=pacifica-vm -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged pacifica/pacifica-vm:latest${IMG_TAG_EXT}
sleep 60
docker exec pacifica-vm ansible-playbook -e keep_vcs=${KEEP_VCS} /etc/ansible/pacifica-vm/verify.yml