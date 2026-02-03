{
  imports = [
    ./bash.nix
    ./fish.nix
    ./helix.nix
    ./hypr/bundle.nix
    ./mako.nix
    ./fuzzel.nix
    ./foot.nix
    ./git.nix
    ./starship.nix
    ./desktop_overrides.nix
  ];

  xdg.configFile."niri/config.kdl".source = ./niri-config.kdl;
}
