#!/bin/sh -e

source ~/.profile
nix-env -i \
  git \
  gnutar \
  gzip \
  openssh

nix-env --delete-generations old
nix-collect-garbage
sudo rm /tmp/bootstrap.sh
