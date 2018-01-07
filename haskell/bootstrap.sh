#!/bin/sh -e

source ~/.profile
nix-env -i \
  bash \
  ghc-8.2.2 \
  stack

nix-env --delete-generations old
nix-collect-garbage
sudo rm /tmp/bootstrap.sh
