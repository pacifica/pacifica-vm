#!/bin/bash -xe

docker stop pacifica-vm
docker commit pacifica-vm pacifica/pacifica-vm:latest
docker rm pacifica-vm