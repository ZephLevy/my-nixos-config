{ pkgs, ... }: {
  fonts.packages = with pkgs; [
    nerd-fonts.iosevka-term
    nerd-fonts.jetbrains-mono
  ];
}
