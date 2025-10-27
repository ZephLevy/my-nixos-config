{ pkgs, lib, config, ... }: {
  environment.systemPackages = with pkgs; [
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
    fprintd
    rclone
    unzip
    brightnessctl
    wl-clipboard
    fastfetch
    starship
    home-manager
    capitaine-cursors-themed
    # adwaita-icon-theme
    libsecret
    lsd
    protonvpn-gui
    wireguard-tools

    # Internet
    librewolf
    bitwarden-desktop
    # ente-auth
    signal-desktop
    strawberry

    # Office (and fun)
    libreoffice
    mpv
    gimp

    # Important hypr* things
    wofi
    hyprpaper
    hyprpolkitagent
    hyprsunset
    hyprshot
    mako
    swayosd
  ];

  # Unfree pkgs
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "steam"
    "steam-original"
    "steam-unwrapped"
    "steam-run"
  ];
}


