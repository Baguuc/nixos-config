{ pkgs, ... }:
{
  home = {
    packages = [ pkgs.zellij ];
    file = {
      "/home/baguuc/.config/zellij/config.kdl" = {
        source = ./config/config.kdl;
      };
    };
  };
  
  programs = {
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
}
