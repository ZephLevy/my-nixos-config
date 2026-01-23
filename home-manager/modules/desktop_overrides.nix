{ pkgs, ... }:
{
  # This file contains all the desktop entries that I don't want in my app finder,
  # either because I open them with shortcuts or because I never use them (but they come with an app)
  xdg.desktopEntries = {
    # I open this with a shortcut
    "thunar" = {
      name = "thunar";
      noDisplay = true;
    };
    # This is opened from inside thunar
    "thunar-settings" = {
      name = "thunar-settings";
      noDisplay = true;
    };
    # This comes installed with thunar and I don't want it
    "thunar-bulk-rename" = {
      name = "thunar-bulk-rename";
      noDisplay = true;
    };

    # I open this with a shortcut
    "foot" = {
      name = "foot";
      noDisplay = true;
    };
    "foot-server" = {
      name = "foot-server";
      noDisplay = true;
    };
    "footclient" = {
      name = "footclient";
      noDisplay = true;
    };

    "surge-xt" = {
      name = "Surge XT";
      exec = "\"${pkgs.surge-XT}/bin/Surge XT\"";
      terminal = false;
    };

    # Fixes missing icons
    # TODO: Doesn't work
    # "protonvpn-app" = {
    #   name = "Proton VPN";
    #   icon = "${pkgs.protonvpn-gui}/share/pixmaps/proton-vpn-logo.svg";
    # };
    # "sioyek" = {
    #   name = "Sioyek";
    #   icon = "${pkgs.sioyek}/share/pixmaps/sioyek-linux-logo.png";
    # };
  };
}
