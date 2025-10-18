{ config, pkgs, ... }: {
  home.file.".icons/default".source = "${pkgs.capitaine-cursors}/share/icons/\"Capitaine Cursors (Gruvbox)\"";
}
