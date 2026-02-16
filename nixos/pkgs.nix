{
  pkgs,
  pkgs-stable,
  lib,
  config,
  ...
}:
{
  environment.systemPackages =
    (with pkgs; [
      # Editors
      helix
      vim
      sioyek

      # Dev stuff
      podman-compose
      gitFull
      go-swag
      gcc
      go
      gopls
      bun
      svelte-language-server
      typescript-language-server
      nixd
      # texlive.combined.scheme-medium
      (pkgs.texlive.combine { inherit (pkgs.texlive) scheme-medium csvsimple; })
      texlab
      typst
      tinymist
      ffmpeg
      localsend
      flutter
      jdk17
      android-studio

      # Rust toolchain
      cargo
      cargo-cache
      rust-analyzer
      rustc
      rustfmt
      clippy

      # System stuff
      thunar
      fprintd
      rclone
      unzip
      brightnessctl
      wl-clipboard
      fastfetch
      starship
      home-manager
      capitaine-cursors-themed
      libsecret
      lsd
      htop

      # Internet
      bitwarden-desktop
      protonvpn-gui
      # ente-auth
      signal-desktop
      strawberry

      # Office (and fun)
      godot
      libreoffice
      mpv
      surge-xt
      ardour
      zrythm
      qpwgraph
      gimp

      # Important hypr* things
      fuzzel
      bemoji
      wtype
      hyprpaper
      hyprpolkitagent
      hyprsunset
      hyprshot
      mako
      swayosd
      xwayland-satellite

      (pkgs.wrapOBS {
        plugins = with pkgs.obs-studio-plugins; [
          wlrobs
        ];
      })
      xdg-desktop-portal-wlr
    ])
    ++
      # Misbehaving packages
      (with pkgs-stable; [
        librewolf
      ]);

  # Unfree pkgs
  nixpkgs.config = {
    allowUnfree = true;
    android_sdk.accept_license = true;
  };

  # TODO: Put this somewhere else
  security.rtkit.enable = true;
  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
    wlr.enable = true;
  };
}
