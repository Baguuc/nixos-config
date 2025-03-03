{ pkgs, ... }:
{
  environment.systemPackages = let
    php = pkgs.php.buildEnv {
      extraConfig = "memory_limit = 2G";
    };
  in [ php ];
  services.phpfpm.phpOptions = ''
    display_errors = on;
  '';
}
