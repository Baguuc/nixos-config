{ ... }:
{
  virtualisation.docker = {
    enbale = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };
  users.users.baguuc.extraGroups = [ "docker" ];
}
