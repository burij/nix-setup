#!/bin/bash
echo "preparing folders"
mkdir /$HOME/.nix
sudo mkdir /nix
echo "creating deamon"
sudo cp nix-in-home.service /etc/systemd/system/
systemctl daemon-reload
systemctl start nix-in-home
systemctl enable nix-in-home
echo "installing environment"
cp bashrc /$HOME/.bashrc
echo "installing dependencies"
sudo apt install curl
sudo chown -R $USER /nix
curl -L https://nixos.org/nix/install | sh
echo "launching environment"
source ~/.nix-profile/etc/profile.d/nix.sh
