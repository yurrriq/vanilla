#!/bin/sh -e

source ~/.profile
nix-env -i \
  bash \
  stack
stack --nix --nix-add-gc-roots --resolver nightly exec ghc -- --info

nix-env --delete-generations old
nix-collect-garbage
sudo rm -rf \
  ~/.stack \
  /tmp/bootstrap.sh
