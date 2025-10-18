{ pkgs, ... }:

{
  services.mako = {
    enable = true;

    settings = {
      font = "Monospace 10";
      anchor = "top-right";
      # margin = "10,40"; # right=10px, top=40px
      width = 320;
      height = 70;
      padding = 10;
      border-size = 2;
      default-timeout = 8000;

      background-color = "#282828";
      text-color = "#ebdbb2";
      border-color = "#458588";
    };

    extraConfig = ''
      [urgency=low]
      background-color=#3c3836
      text-color=#ebdbb2
      border-color=#928374
      default-timeout=6000

      [urgency=normal]
      background-color=#282828
      text-color=#ebdbb2
      border-color=#458588
      default-timeout=8000

      [urgency=critical]
      background-color=#cc241d
      text-color=#282828
      border-color=#fb4934
      default-timeout=0
    '';
  };
}

