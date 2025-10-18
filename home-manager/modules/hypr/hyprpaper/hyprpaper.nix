{ config, pkgs, ... }: {
  services.hyprpaper.enable = true;
  services.hyprpaper.settings = {
    preload = [
      "/home/zeph/nix/home-manager/modules/hypr/hyprpaper/wallpaper.png"
    ];
  
    wallpaper = [
      ", /home/zeph/nix/home-manager/modules/hypr/hyprpaper/wallpaper.png"
    ];
  };
}
