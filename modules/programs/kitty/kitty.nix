{ pkgs, ... }:
{
  home = {
    packages = [ pkgs.kitty ];
    file = {
      "/home/baguuc/.config/kitty/kitty.conf" = {
        source = ./config/kitty.conf;
      };
      "/home/baguuc/.config/kitty/current-theme.conf" = {
        source = ./config/current-theme.conf;
      };
    };
  };
}
