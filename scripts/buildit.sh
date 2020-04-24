#!/bin/bash -xe
  
docker build -t travis_local/pacifica/pacifica-vm:latest .
docker run -d --name=pacifica-vm -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged travis_local/pacifica/pacifica-vm:latest
docker exec pacifica-vm ansible-playbook /etc/ansible/pacifica-vm/setup-play.yml
docker exec pacifica-vm ansible-playbook /etc/ansible/drupal-vm-5.2.0/provisioning/playbook.yml
docker exec pacifica-vm ansible-playbook /etc/ansible/pacifica-vm/playbook.yml
