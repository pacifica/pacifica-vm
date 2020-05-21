#!/bin/bash -xe

KEEP_VCS=${KEEP_VCS:-true}

if $KEEP_VCS; then
  IMG_TAG_EXT="-vcs"
else
  IMG_TAG_EXT=""
fi