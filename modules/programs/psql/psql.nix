{ pkgs, ... }:
{
  home.shellAliases = {
    psql = "sudo -u postgres psql";
  };
}
