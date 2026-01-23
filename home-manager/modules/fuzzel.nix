{ config, pkgs, ... }:
{
  programs.fuzzel.enable = true;
  programs.fuzzel.settings = {
    main = {
      image-size-ratio = 1;
      cache = "/dev/null";
      terminal = "foot -e";
    };
    colors = {
      background = "#282828ff";
      text = "#ebdbb2ff";
      # prompt = "#d65d0eff";
      prompt = "#458588ff";
      placeholder = "#bdae93ff";
      input = "#d5c4a1ff";
      match = "#83a598ff";
      selection = "#504945ff";
      selection-text = "#fbf1c7ff";
      selection-match = "#fabd2fff";
      counter = "#928374ff";
      border = "#d65d0eff";
    };
    border = {
      width = 2;
      radius = 0;
    };
  };
}
