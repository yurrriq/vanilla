#!/bin/sh -e

echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

apk --no-cache --no-progress update
apk --no-cache --no-progress add \
  bash \
  ca-certificates \
  curl \
  git \
  gzip \
  openssh-client \
  sudo \
  tar

adduser -D vanilla
echo "%vanilla ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
rm /tmp/init.sh
