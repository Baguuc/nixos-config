{ pkgs, ... }:
{
  home = {
    packages = [ pkgs.bat ];
    shellAliases = {
      bat = ''bat --theme gruvbox-dark --style "numbers,changes"'';
      cat = "bat";
    };
  };
}
