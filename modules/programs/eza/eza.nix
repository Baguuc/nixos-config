{ pkgs, ... }:
{
  home = {
    packages = [ pkgs.eza ];
    shellAliases = {
      eza = "eza -1lhBmU --hyperlink --git";
      exa = "eza";
      ls = "eza";
    };
    file = {
      "/home/baguuc/.config/eza/theme.yml" = {
        source = ./config/theme.yml;
      };
    };
    sessionVariables = {
      EXA_COLORS = "/home/baguuc/.config/eza/theme.yml";
    };
  };
}
