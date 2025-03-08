{ ... }:
{
  imports = [
    ./programs/alsa/alsa.nix
    ./programs/hyprland/home.nix
    ./programs/swaybg/swaybg.nix
    ./programs/brave/brave.nix
  ];

  home.file = {
    "/home/baguuc/wallpapers" = {
      source = ../wallpapers;
    };
  };
}
