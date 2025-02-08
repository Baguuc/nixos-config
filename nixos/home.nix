{ config, pkgs, ... }:

{ 
  programs.home-manager.enable = true;
  
  home = {
    username = "baguuc";
    homeDirectory = "/home/baguuc";
    packages = [];
    file = {};
    sessionVariables = {};

    # do not change 
    stateVersion = "24.05";
  };
}
