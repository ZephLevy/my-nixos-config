{
  description = "My system configuration.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
  };

  outputs =
    {
      nixpkgs,
      nixpkgs-stable,
      home-manager,
      nixos-hardware,
      ...
    }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.TARS = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = {
          pkgs-stable = nixpkgs-stable.legacyPackages.${system};
        };

        modules = [
          ./nixos/configuration.nix
          nixos-hardware.nixosModules.framework-amd-ai-300-series

          home-manager.nixosModules.home-manager

          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.zeph = import ./home-manager/home.nix;
          }
        ];
      };
    };
}
