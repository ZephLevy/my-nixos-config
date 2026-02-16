{ config, pkgs, ... }:

{
  gtk = {
    enable = true;
    theme = {
      package = pkgs.gruvbox-gtk-theme;
      name = "Gruvbox-Dark";
    };
    iconTheme = {
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
    };
    cursorTheme = {
      package = pkgs.capitaine-cursors;
      name = "Capitaine Cursors (Gruvbox)";
      size = 24;
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "gtk";
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      gtk-theme = "Gruvbox-Dark";
      icon-theme = "Adwaita";
      cursor-theme = "Capitaine Cursors (Gruvbox)";
      cursor-size = 24;
      color-scheme = "prefer-dark";
    };
  };

  home.sessionVariables = {
    XCURSOR_THEME = "Capitaine Cursors (Gruvbox)";
    XCURSOR_SIZE = "24";
    HYPRCURSOR_SIZE = "24";

    GTK_THEME = "Gruvbox-Dark";

    NIXOS_OZONE_WL = "1";
    ELECTRON_OZONE_PLATFORM_HINT = "wayland";
    GDK_BACKEND = "wayland";

    SURGE_CLAP = "${pkgs.surge-xt}/lib/clap";
  };
}
