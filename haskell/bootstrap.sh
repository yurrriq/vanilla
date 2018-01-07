#!/bin/sh -e

source ~/.profile
nix-env -i \
  bash \
  stack
stack --nix --resolver nightly exec ghc -- --info

nix-env --delete-generations old
sudo rm -rf \
  ~/.stack \
  /tmp/bootstrap.sh
