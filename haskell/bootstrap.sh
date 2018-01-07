#!/bin/sh -e

source ~/.profile
nix-env -i \
  bash \
  ghc-8.2.2 \
  stack

nix-collect-garbage
sudo rm /tmp/bootstrap.sh
