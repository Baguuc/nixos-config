{ pkgs, ... }:
{ 
  home = {
    file = {
      "/home/baguuc/.config/hypr" = {
        source = ./config;
      };
    };
  };
}
