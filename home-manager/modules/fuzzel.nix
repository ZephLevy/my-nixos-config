{ config, pkgs, ... }: {
  programs.fuzzel.enable = true;
  programs.fuzzel.settings = {
  colors = {
    background = "#282828ff";
    text = "#ebdbb2ff";
    prompt = "#fabd2fff";
    placeholder = "#bdae93ff";
    input = "#d5c4a1ff";
    match = "#83a598ff";
    selection = "#504945ff";
    selection-text = "#fbf1c7ff";
    selection-match = "#fabd2fff";
    counter = "#928374ff";
    border = "#d79921ff";
    };
  };
}
