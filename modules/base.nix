{ inputs, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./programs/i3wm/configuration.nix
    inputs.home-manager.nixosModules.home-manager
  ];

  environment.systemPackages = with pkgs; [
    home-manager
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    backupFileExtension = "bak";
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
  
  boot = {
    loader = {
      grub = {
        enable = true;
        device = "/dev/sda";
        useOSProber = true;
      };
    };
  };

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  time.timeZone = "Europe/Warsaw";

  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = {
      LC_ADDRESS = "pl_PL.UTF-8";
      LC_IDENTIFICATION = "pl_PL.UTF-8";
      LC_MEASUREMENT = "pl_PL.UTF-8";
      LC_MONETARY = "pl_PL.UTF-8";
      LC_NAME = "pl_PL.UTF-8";
      LC_NUMERIC = "pl_PL.UTF-8";
      LC_PAPER = "pl_PL.UTF-8";
      LC_TELEPHONE = "pl_PL.UTF-8";
      LC_TIME = "pl_PL.UTF-8";
    };
  };

  services = {
    xserver.xkb = {
      layout = "pl";
      variant = "";
    };
    flatpak.enable = true;
  };

  hardware.bluetooth.enable = true;
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      kdePackages.xdg-desktop-portal-kde
    ];
  };

  console.keyMap = "pl2"; 
  
  users.users.baguuc = {
    isNormalUser = true;
    description = "baguuc";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  system.stateVersion = "24.11";
}
