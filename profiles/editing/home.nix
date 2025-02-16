{ config, pkgs, ... }:
{
  imports = [
    ../../modules/programs/kitty/kitty.nix
    ../../modules/programs/brave/brave.nix
    ../../modules/programs/rofi/rofi.nix
    ../../modules/davinci/davinci.nix
  ];
  
  nixpkgs.config.allowUnfree = true;
  
  home = rec {
    username = "baguuc";
    homeDirectory = "/home/baguuc";

    # do not change 
    stateVersion = "24.05";
  };
}
