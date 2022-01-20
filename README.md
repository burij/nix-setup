# Nix setup on a fresh Ubuntu based system

This script does following:
- creating a directory in $HOME for nix-store
- creating a directory in /root
- mount binding them
- creating, starting an enabling a deamon, which makes the mounting permanent
- installs nix pakage manager
- entering the nix environment and making the entering automaticly by creating a .bashrc (asuming, you don't have one)

# Installation


```
git clone https://github.com/burij/nix-setup
cd nix-setup
chmod +x install.sh
./install.sh
```

