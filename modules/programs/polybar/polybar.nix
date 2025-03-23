{ pkgs, ... }:
{
  home = {
    packages = [ pkgs.polybar ];
    
    file = {
      "/home/baguuc/.config/polybar" = {
        source = ./config;
      };
    };
  };
}
