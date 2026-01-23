{ config, pkgs, ... }:
{
  services.hyprpaper.enable = true;
  services.hyprpaper.settings = {
    wallpaper = [
      {
        monitor = "";
        path = "/home/zeph/nix/home-manager/modules/hypr/hyprpaper/wallpaper.png";
      }
    ];
    splash = false;
  };
}
