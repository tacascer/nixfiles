cp /etc/nixos/hardware-configuration.nix $PWD/hardware-configuration.nix
sudo mv /etc/nixos /etc/nixos.bak
sudo ln -s $PWD /etc/nixos
