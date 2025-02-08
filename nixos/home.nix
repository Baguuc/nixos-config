{ config, pkgs, ... }:

{ 
  programs.home-manager.enable = true;
  
  home = rec {
    username = "baguuc";
    homeDirectory = "/home/baguuc";
    packages = [];
    file = {
      "${homeDirectory}/.config/kitty/kitty.conf" = {
        source = ./configs/kitty/kitty.conf;
      };
      "${homeDirectory}/.config/kitty/wallpaper.jpg" = {
        source = ./images/3.jpg;
      };
    };
    sessionVariables = {};

    # do not change 
    stateVersion = "24.05";
  };
}
