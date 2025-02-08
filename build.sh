#!/usr/bin/env bash
sudo cp -r ./nixos/* /etc/nixos
sudo cp -r ./files/* /etc/nixos
sudo nixos-rebuild switch --flake /etc/nixos/#baguucNixos
