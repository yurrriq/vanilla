#!/bin/sh -e

echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

apk --no-cache --no-progress update
apk --no-cache --no-progress add \
  bash \
  curl \
  sudo

adduser -D vanilla
echo "%vanilla ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
rm /tmp/init.sh
