{ config, pkgs, ... }: {
  programs.kitty.enable = true;
  programs.kitty.settings = {
    font_family = "IosevkaTerm Nerd Font Mono";
    font_size = 12.0;
  };
}
