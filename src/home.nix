{ config, pkgs, ... }:

{ 
  programs = {
    home-manager.enable = true;
    bash.enable = true;
  };
  
  home = rec {
    username = "baguuc";
    homeDirectory = "/home/baguuc";
    packages = with pkgs; [
      i3lock
      kitty
      brave
      rofi
      neovim
      git
      bat
    ];
    shellAliases = {
      bat = ''bat --theme gruvbox-dark --style "numbers,changes"'';
      cat = "bat";
    };
    file = {
      "${homeDirectory}/.config/kitty/kitty.conf" = {
        source = ./configs/kitty/kitty.conf;
      };
      "${homeDirectory}/.config/kitty/wallpaper.jpg" = {
        source = ./images/3.jpg;
      };
      "${homeDirectory}/.config/kitty/current-theme.jpg" = {
        source = ./configs/kitty/current-theme.conf;
      };
    };
    sessionVariables = {};

    # do not change 
    stateVersion = "24.05";
  };
}
