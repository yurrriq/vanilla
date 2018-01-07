#!/bin/sh -e

source ~/.profile
nix-env -i \
  git \
  gnutar \
  gzip \
  openssh

nix-collect-garbage
sudo rm /tmp/bootstrap.sh
