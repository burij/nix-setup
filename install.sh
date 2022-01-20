#!/bin/bash
mkdir /$HOME/.nix
sudo mkdir /nix
sudo cp nix-in-home.service /etc/systemd/system/
systemctl daemon-reload
systemctl start nix-in-home
systemctl enable nix-in-home
cp bashrc /$HOME/.bashrc
curl -L https://nixos.org/nix/install | sh
source ~/.nix-profile/etc/profile.d/nix.sh
