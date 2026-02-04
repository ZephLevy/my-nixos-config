{ config, pkgs, ... }:
{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 20;

        modules-left = [ "hyprland/workspaces" "niri/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [
          "cpu"
          "memory"
          "temperature"
          "battery"
        ];

        "hyprland/workspaces" = {
          disable-scroll = true;
          all-outputs = true;
          format = "{icon}";
          format-icons = {
            "1" = "";
            "2" = "󰖟";
            "3" = "";
            "4" = "󰝚";
            active = "•";
            default = "";
          };
          persistent-workspaces."*" = 4;
        };

        "clock" = {
          format = " {:%H:%M:%S}";
          tooltip-format = " {:%a, %d %b}";
          interval = 1;
        };

        "cpu" = {
          format = " {usage: >3}%";
        };
        "memory" = {
          format = " {used:0.1f}G";
          tooltip = false;
        };
        "temperature" = {
          format = " {temperatureC}°C";
          tooltip = false;
        };
        "battery" = {
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon} {capacity}%";
          format-icons = [
            ""
            ""
            ""
            ""
            ""
          ];
        };
      };
    };

    style = ''
      @define-color bg      #282828;
      @define-color bg1     #3c3836;
      @define-color fg      #ebdbb2;
      @define-color red     #cc241d;
      @define-color green   #98971a;
      @define-color yellow  #d79921;
      @define-color blue    #458588;
      @define-color purple  #b16286;
      @define-color aqua    #689d6a;
      @define-color orange  #d65d0e;

      * {
          font-family: "JetBrainsMono Nerd Font", monospace;
          font-size: 12px;
          font-weight: bold;
          border: none;
          padding: 0;
          margin: 0;
          color: @fg;
      }

      window#waybar {
          background: transparent;
          border: none;
      }

      #workspaces,
      #clock,
      #cpu,
      #memory,
      #temperature,
      #battery {
          background-color: @bg1;
          margin: 3px 2px;
          padding: 2px 6px;
          border: 2px solid @orange;
          border-radius: 0;
      }

      #workspaces {
        margin-left: 6px;
      }

      #battery {
        margin-right: 6px;
      }

      #workspaces button {
          color: @fg;
          background: none;
          border: none;
          padding: 0 4px;
      }

      #workspaces button.focused { color: @yellow; background: none; }
      #workspaces button:hover { color: @orange; }

      #clock { color: @blue; }
      #cpu { color: @green; }
      #memory { color: @purple; }
      #temperature { color: @aqua; }
      #temperature.critical { color: @red; }
      #battery { color: @fg; }
      #battery.charging { color: @blue; }
      #battery.critical:not(.charging) { color: @red; }
    '';
  };
}
