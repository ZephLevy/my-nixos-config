{
  programs.hyprlock.enable = true;
  programs.hyprlock.settings = {
    "$font" = "JetBrainsMono NF";

    general = {
      hide_cursor = true;
    };

    auth = {
      fingerprint = {
        enabled = true;
        ready_message = "Scan fingerprint to unlock";
        present_message = "Scanning...";
        retry_delay = 250;
      };
    };

    animations = {
      enabled = true;
      bezier = [ "linear,1,1,0,0" ];
      animation = [
        "fadeIn, 1, 5, linear"
        "fadeOut, 1, 5, linear"
        "inputFieldDots, 1, 2, linear"
      ];
    };

    background = {
      path = "/home/zeph/nix/home-manager/modules/hypr/hyprpaper/wallpaper.png";
      blur_passes = 3;
    };

    input-field = {
      size = "20%, 5%";
      outline_thickness = 3;
      inner_color = "rgba(0, 0, 0, 0.0)";

      outer_color = "rgba(d65d0eff) rgba(d6740eff) 45deg";
      check_color = "rgba(00ff99ee) rgba(ff6633ee) 45deg";
      fail_color = "rgba(ff6633ee) rgba(ff0066ee) 40deg";

      font_color = "rgb(143, 143, 143)";
      fade_on_empty = false;
      rounding = 0;

      font_family = "$font";
      placeholder_text = "Input password...";
      fail_text = "$PAMFAIL";
      halign = "center";
      valign = "center";
    };

    label = [
      {
        text = "$TIME";
        font_size = 90;
        font_family = "$font";
        position = "-30, 0";
        halign = "right";
        valign = "top";
      }
      {
        text = "cmd[update:60000] date +\"%A, %d %B %Y\"";
        font_size = 25;
        font_family = "$font";
        position = "-30, -150";
        halign = "right";
        valign = "top";
      }
    ];
  };
}
