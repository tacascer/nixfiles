cp /etc/nixos/hardware-configuration.nix $PWD/hardware-configuration.nix
rm /etc/nixos/*
ln -s $PWD/hardware-configuration.nix /etc/nixos/hardware-configuration.nix
ln -s $PWD/configuration.nix /etc/nixos/configuration.nix
ln -s $PWD/flake.nix /etc/nixos/flake.nix
ln -s $PWD/flake.lock /etc/nixos/flake.lock
