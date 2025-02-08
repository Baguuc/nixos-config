{ inputs, config, pkgs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.home-manager
    ];

  environment.systemPackages = with pkgs; [
    home-manager
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      baguuc = import ./home.nix;
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
    displayManager.defaultSession = "none+i3";
    xserver = {
      enable = true;
      desktopManager.xterm.enable = false;
      windowManager.i3 = {
        enable = true;
	extraPackages = with pkgs; [
	  i3lock
	];
      };

      xkb = {
        layout = "pl";
        variant = "";
      };
    };
  };

  console.keyMap = "pl2";
  
  users.users.baguuc = {
    isNormalUser = true;
    description = "baguuc";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kitty
      brave
      rofi
      neovim
      git
    ];
  };
  
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];  
  
  system.stateVersion = "24.11";
}
