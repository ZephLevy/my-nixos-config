{ pkgs, ... }:
{
  services.xserver = {
    enable = true;
    desktopManager.xfce.enable = true;
    # Don't start on boot
    displayManager.startx = {
      enable = true;
      generateScript = true;
    };
  };
}
