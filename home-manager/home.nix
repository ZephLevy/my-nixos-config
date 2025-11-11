{ config, pkgs, lib, ... }: {
  imports = [
    ./modules/bundle.nix
  ];

  home = {
    username = "zeph";
    homeDirectory = "/home/zeph";
    stateVersion = "25.05";

    packages = with pkgs; [
    ];
  };

}
