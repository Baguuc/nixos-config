{ config, pkgs, ... }:
{
  imports = [
    ../../modules/programs/kitty/kitty.nix
    ../../modules/programs/brave/brave.nix
    ../../modules/programs/rofi/rofi.nix
    ../../modules/programs/nvim/nvim.nix
    ../../modules/programs/git/git.nix
    ../../modules/programs/bat/bat.nix
    ../../modules/programs/zellij/zellij.nix
    ../../modules/programs/eza/eza.nix
    ../../modules/programs/xh/xh.nix
    ../../modules/programs/rust/rust.nix
  ];
  
  home = rec {
    username = "baguuc";
    homeDirectory = "/home/baguuc";
    packages = with pkgs; [
      alacritty
    ];

    # do not change 
    stateVersion = "24.05";
  };
}
