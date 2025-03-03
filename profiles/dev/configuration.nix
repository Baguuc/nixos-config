{ inputs, config, pkgs, ... }:
{
  imports = [
    ../../modules/base.nix
    ../../modules/services/postgres/postgres.nix
    ../../modules/services/lampp/lampp.nix
  ];
  home-manager.users.baguuc = import ./home.nix;
}
