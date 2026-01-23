{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {

    exec-once = [
      "hyprpaper"
      "systemctl --user start hyprpolkitagent"
      "hyprctl setcursor \"Capitaine Cursors (Gruvbox)\" 24"
      "swayosd-server"
      "hyprsunset"
    ];

    monitor = [
      "eDP-1,2880x1920@120,auto,auto"
      ",preferred,auto,2,"
    ];

    general = {
      gaps_in = 5;
      gaps_out = 6;

      border_size = 2;

      "col.active_border" = "rgba(d65d0eff)";
      "col.inactive_border" = "rgba(181926ff)";

      resize_on_border = false;
      allow_tearing = false;
      layout = "master";
    };

    master = {
      new_status = "slave";
    };

    decoration = {
      rounding = 0;
      active_opacity = 1.0;
      inactive_opacity = 1.0;

      shadow = {
        enabled = true;
        range = 4;
        render_power = 3;
        color = "rgba(1a1a1aee)";
      };
      blur = {
        enabled = true;
        size = 3;
        passes = 1;
        vibrancy = 0.1696;
      };
    };

    animations = {
      enabled = true;

      bezier = [
        "easeOutQuint,0.23,1,0.32,1"
        "easeInOutCubic,0.65,0.05,0.36,1"
        "linear,0,0,1,1"
        "almostLinear,0.5,0.5,0.75,1.0"
        "quick,0.15,0,0.1,1"
      ];

      animation = [
        "global, 1, 10, default"
        "border, 1, 5.39, easeOutQuint"
        "windows, 1, 4.79, easeOutQuint"
        "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
        "windowsOut, 1, 1.49, linear, popin 87%"
        "fadeIn, 1, 1.73, almostLinear"
        "fadeOut, 1, 1.46, almostLinear"
        "fade, 1, 3.03, quick"
        "layers, 1, 3.81, easeOutQuint"
        "layersIn, 1, 4, easeOutQuint, fade"
        "layersOut, 1, 1.5, linear, fade"
        "fadeLayersIn, 1, 1.79, almostLinear"
        "fadeLayersOut, 1, 1.39, almostLinear"
        "workspaces, 1, 1.94, almostLinear, fade"
        "workspacesIn, 1, 1.21, almostLinear, fade"
        "workspacesOut, 1, 1.94, almostLinear, fade"
      ];
    };

    dwindle = {
      pseudotile = true;
      preserve_split = true;
    };

    misc = {
      force_default_wallpaper = 0;
      disable_hyprland_logo = false;
    };

    input = {
      kb_layout = "us,us";
      kb_variant = "colemak_dh_iso,";
      kb_options = "grp:alt_shift_toggle,compose:ralt";

      follow_mouse = 1;
      sensitivity = -0.15;

      touchpad = {
        natural_scroll = true;
        disable_while_typing = false;
      };
    };

    "$mainMod" = "SUPER";
    "$terminal" = "foot";
    "$fileManager" = "thunar";
    "$menu" = "fuzzel";
    "$emoji" = "BEMOJI_PICKER_CMD=\"fuzzel --dmenu\" bemoji -t --private";
    "$browser" = "librewolf";
    "$browser_private" = "librewolf --private-window";

    bind = [
      "$mainMod, RETURN, exec, $terminal"
      "$mainMod, Q, killactive,"
      "$mainMod, T, exec, $fileManager"
      "$mainMod, V, togglefloating,"
      "$mainMod, SPACE, exec, $menu"
      "$mainMod SHIFT, SPACE, exec, $emoji"
      "$mainMod, S, exec, $browser"
      "$mainMod, R, exec, $browser_private"
      "$mainMod, P, pseudo,"
      "$mainMod, J, togglesplit,"
      "$mainMod, F, fullscreen, 0"

      "$mainMod, N, movefocus, l"
      "$mainMod, O, movefocus, r"
      "$mainMod, I, movefocus, u"
      "$mainMod, E, movefocus, d"

      "$mainMod, H, layoutmsg, swapwithmaster auto"
      "$mainMod, M, layoutmsg, cyclenext"
      "$mainMod, K, layoutmsg, cycleprev"
      "$mainMod SHIFT, M, layoutmsg, swapnext"
      "$mainMod SHIFT, K, layoutmsg, swapprev"

      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"

      # Screenshots
      "$mainMod, 0, exec, hyprshot -m region --clipboard-only"
      "$mainMod SHIFT, 0, exec, hyprshot -m region"
      "$mainMod, 9, exec, hyprshot -m window --clipboard-only"
      "$mainMod SHIFT, 9, exec, hyprshot -m window"
      "$mainMod, 8, exec, hyprshot -m output --clipboard-only"
      "$mainMod SHIFT, 8, exec, hyprshot -m output"

      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"

    ];

    bindel = [
      ",XF86AudioRaiseVolume, exec, swayosd-client --output-volume raise"
      ",XF86AudioLowerVolume, exec, swayosd-client --output-volume lower"
      ",XF86AudioMute, exec, swayosd-client --output-volume mute-toggle"
      ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
      ",XF86MonBrightnessUp, exec, swayosd-client --brightness raise"
      ",XF86MonBrightnessDown, exec, swayosd-client --brightness lower"
    ];

    bindl = [
      ", XF86AudioNext, exec, playerctl next"
      ", XF86AudioPause, exec, playerctl play-pause"
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioPrev, exec, playerctl previous"
    ];

    # windowrule = [
    #   "suppressevent maximize, class:.*"
    #   "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
    # ];
    xwayland = {
      force_zero_scaling = true;
    };
  };
}
