# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./pkgs.nix
      ./fonts.nix
      ./modules/bundle.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  
  networking.hostName = "TARS"; 
  networking.networkmanager.enable = true; 
  networking.firewall.checkReversePath = "loose";

  time.timeZone = "Europe/Paris";

  
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "mod-dh-iso-us";
  };

  
  # Enable CUPS to print documents.
  # services.printing.enable = true;

  
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  services.pipewire.wireplumber.extraConfig.no-ucm = {
    "monitor.alsa.properties" = {
      "alsa.use-ucm" = false;
    };
  };
 
  nix.settings.experimental-features = [ "nix-command" "flakes" ];   

  system.stateVersion = "25.05";
}

