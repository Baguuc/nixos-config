{ config, pkgs, ... }:

{ 
  programs = {
    home-manager.enable = true;
    bash = {
      enable = true;
      bashrcExtra = ''
	zell() {
	  if [ -z "$ZELLIJ_SESSION_NAME" ]; then 
	    zellij 
	  fi
	}

	zell
      '';
    };
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
      zellij
      eza
    ];
    shellAliases = {
      bat = ''bat --theme gruvbox-dark --style "numbers,changes"'';
      cat = "bat";
      eza = "eza -1lhBmU --hyperlink --git";
      exa = "eza";
      ls = "eza";
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
      "${homeDirectory}/.config/zellij/config.kdl" = {
        source = ./configs/zellij/config.kdl;
      };
      "${homeDirectory}/.config/eza/theme.yml" = {
        source = ./configs/eza/theme.yml;
      };
    };
    sessionVariables = {
      EXA_COLORS = "${homeDirectory}/.config/eza/theme.yml";
    };

    # do not change 
    stateVersion = "24.05";
  };
}
