{ pkgs, ... }:
{
  home = {
    packages = [
      pkgs.rustup
      pkgs.rustc
    ];
  };
}
