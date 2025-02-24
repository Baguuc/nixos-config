{ inputs, config, pkgs, ... }:
{
  imports = [
    ../../modules/base.nix
    ../../modules/services/postgres/postgres.nix
  ];
  home-manager.users.baguuc = import ./home.nix;
}
