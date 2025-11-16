{ pkgs, pkgs-stable, lib, config, ... }: {
  environment.systemPackages = (with pkgs; [
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
    nixd
    # texlive.combined.scheme-medium
    (pkgs.texlive.combine { inherit (pkgs.texlive) scheme-medium csvsimple; })
    texlab
    typst
    tinymist
    ffmpeg
    altair

    # Rust toolchain
    cargo
    cargo-cache
    rust-analyzer
    rustc
    rustfmt
    clippy

    # System stuff
    xfce.thunar-bare
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
    wireguard-tools

    # Internet
    librewolf
    bitwarden-desktop
    # ente-auth
    signal-desktop
    strawberry

    # Office (and fun)
    godot
    libreoffice
    mpv
    gimp

    # Important hypr* things
    fuzzel
    hyprpaper
    hyprpolkitagent
    hyprsunset
    hyprshot
    mako
    swayosd
  ])
  ++
  (with pkgs-stable; [
    protonvpn-gui
  ]);

  # Unfree pkgs
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "steam"
    "steam-original"
    "steam-unwrapped"
    "steam-run"
  ];
}


