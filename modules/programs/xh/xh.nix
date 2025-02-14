{ pkgs, ... }:
{
  home = {
    packages = [ pkgs.xh ];
    shellAliases = {
      get = "xh GET";
      post = "xh POST";
      delete = "xh DELETE";
      put = "xh PUT";
      patch = "xh PATCH";
    };
  };
}
