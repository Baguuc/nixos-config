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
      xh
      rustup
      rustc
    ];
    shellAliases = {
      bat = ''bat --theme gruvbox-dark --style "numbers,changes"'';
      cat = "bat";
      eza = "eza -1lhBmU --hyperlink --git";
      exa = "eza";
      ls = "eza";
      get = "xh GET";
      post = "xh POST";
      delete = "xh DELETE";
      put = "xh PUT";
      patch = "xh PATCH";
    };
    file = {
# kitty configs
      "${homeDirectory}/.config/kitty/kitty.conf" = {
        source = ./configs/kitty/kitty.conf;
      };
      "${homeDirectory}/.config/kitty/wallpaper.jpg" = {
        source = ./images/3.jpg;
      };
      "${homeDirectory}/.config/kitty/current-theme.jpg" = {
        source = ./configs/kitty/current-theme.conf;
      };
      # zellij configs
      "${homeDirectory}/.config/zellij/config.kdl" = {
        source = ./configs/zellij/config.kdl;
      };
      # eza configs
      "${homeDirectory}/.config/eza/theme.yml" = {
        source = ./configs/eza/theme.yml;
      };
      # nvim configs
      "${homeDirectory}/.config/nvim/stylua.toml" = {
        source = ./configs/nvim/stylua.toml;
      };
      "${homeDirectory}/.config/nvim/lua/plugins/lsp.lua" = {
        source = ./configs/nvim/lua/plugins/lsp.lua;
      };
      "${homeDirectory}/.config/nvim/lua/plugins/colorscheme.lua" = {
        source = ./configs/nvim/lua/plugins/colorscheme.lua;
      };
      "${homeDirectory}/.config/nvim/lua/config/options.lua" = {
        source = ./configs/nvim/lua/config/options.lua;
      };
      "${homeDirectory}/.config/nvim/lua/config/autocmds.lua" = {
        source = ./configs/nvim/lua/config/autocmds.lua;
      };
      "${homeDirectory}/.config/nvim/lua/config/lazy.lua" = {
        source = ./configs/nvim/lua/config/lazy.lua;
      };
      "${homeDirectory}/.config/nvim/lua/config/keymaps.lua" = {
        source = ./configs/nvim/lua/config/keymaps.lua;
      };
      "${homeDirectory}/.config/nvim/init.lua" = {
        source = ./configs/nvim/init.lua;
      };
      "${homeDirectory}/.config/nvim/.neoconf.json" = {
        source = ./configs/nvim/.neoconf.json;
      };
      "${homeDirectory}/.config/nvim/lazy-lock.json" = {
        source = ./configs/nvim/lazy-lock.json;
      };
      "${homeDirectory}/.config/nvim/lazyvim.json" = {
        source = ./configs/nvim/lazyvim.json;
      };
    };
    sessionVariables = {
      EXA_COLORS = "${homeDirectory}/.config/eza/theme.yml";
    };

    # do not change 
    stateVersion = "24.05";
  };
}
