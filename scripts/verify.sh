#!/bin/bash -xe

docker run -d --name=pacifica-vm -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged pacifica/pacifica-vm:latest
sleep 60
docker exec pacifica-vm ansible-playbook /etc/ansible/pacifica-vm/verify.yml