# Pacifica VM

This repository is used to develop Pacifica services in a virtual machine. The
virtual machine has all of the Pacifica services installed and configured in
an "all-in-one" configuration. This contains all the data transfer APIs,
metadata services, and user interfaces.

## Quick Start

Using docker you can stand up the services:

```
docker run -d --name=pacifica-vm --hostname=pacifica-vm -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged -p 8000:80 pacifica/pacifica-vm:latest
```

Then go to the (localhost site)[http://localhost:8000] to see Pacifica.

## Build It Yourself

To build the image checkout the scripts directory for more in-depth information.

```
./scripts/buildit.sh &&
./scripts/commit.sh &&
./scripts/verify.sh
```

If the Docker caching gets in the way you can clean up the images by doing:

```
docker rmi travis_local/pacifica/pacifica-vm:latest pacifica/pacifica-vm:latest
```
