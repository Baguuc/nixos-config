{ inputs, config, pkgs, ... }:
{
  imports = [
    ../../modules/base.nix
  ];
  home-manager.users.baguuc = import ./home.nix;
}
