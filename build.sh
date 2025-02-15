#!/usr/bin/env bash

shopt -s extglob
set -e

sudo cp /etc/nixos/**/hardware-configuration.nix ./modules

sudo rm -r /etc/nixos/*

sudo cp ./flake.nix /etc/nixos
sudo cp -r ./modules /etc/nixos
sudo cp -r ./profiles /etc/nixos

sudo nixos-rebuild switch --flake /etc/nixos/#dev-profile
