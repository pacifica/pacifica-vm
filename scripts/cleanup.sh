#!/bin/bash -xe

if docker ps | grep -q pacifica-vm ; then
  docker stop pacifica-vm
fi
if docker ps -a | grep -q pacifica-vm ; then
  docker rm pacifica-vm
fi
