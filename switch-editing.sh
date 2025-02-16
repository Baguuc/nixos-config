#!/usr/bin/env bash

shopt -s extglob

sudo cp /etc/nixos/**/hardware-configuration.nix ./modules
sudo cp /etc/nixos/**/flake.lock ./modules

set -e

sudo rm -r /etc/nixos/*

sudo cp ./flake.lock /etc/nixos
sudo cp ./flake.nix /etc/nixos
sudo cp -r ./modules /etc/nixos
sudo cp -r ./profiles /etc/nixos

sudo nixos-rebuild switch --flake /etc/nixos/#editing-profile
