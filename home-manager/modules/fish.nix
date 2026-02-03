{ config, pkgs, ... }:
{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
    '';
    shellAliases =
      let
        flakeDir = "~/nix";
      in
      {
        rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
        upg = "sudo nix flake update --flake ${flakeDir} && sudo nixos-rebuild switch --flake ${flakeDir}";
        ed = "hx ${flakeDir}";
        ff = "fastfetch -c neofetch";
        ls = "lsd";
      };
    shellAbbrs = {
      dcu = "podman-compose up";
      dcub = "podman-compose up --build";
      dcd = "podman-compose down";
      dcdv = "podman-compose down -v";
    };
  };
}
