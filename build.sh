#!/usr/bin/env bash

echo "Warning this will delete your config in /etc/nixos."
read -p "Do you want to continue? (y/N)" answer
answer=$(echo "${answer:-n}" | tr '[:upper:]' '[:lower:]')

if [[ $answer == "n" ]]; then
  echo "Aborting.."
  exit
fi

echo "Building..."

shopt -s extglob

sudo nixos-generate-config
sudo cp /etc/nixos/hardware-configuration.nix ./modules

sudo cp ./flake.nix /etc/nixos
sudo cp -r ./modules/ /etc/nixos
sudo cp -r ./profiles/ /etc/nixos
sudo cp -r ./wallpapers/ /etc/nixos

sudo nixos-rebuild switch --flake /etc/nixos/#dev-profile
