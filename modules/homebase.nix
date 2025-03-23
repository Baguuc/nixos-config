{ ... }:
{
  imports = [
    ./programs/alsa/alsa.nix
    ./programs/swaybg/swaybg.nix
    ./programs/brave/brave.nix
    ./programs/polybar/polybar.nix
    ./programs/i3wm/home.nix
  ];

  home.file = {
    "/home/baguuc/wallpapers" = {
      source = ../wallpapers;
    };
  };
}
