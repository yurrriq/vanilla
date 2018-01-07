#!/bin/sh -e

curl -sSL https://nixos.org/nix/install | USER=`whoami` sh -e
echo "unset NIX_PATH" >> ~/.profile
echo "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" >> ~/.profile
echo "source ~/.nix-profile/etc/profile.d/nix.sh" >> ~/.profile
sudo rm /tmp/bootstrap.sh
