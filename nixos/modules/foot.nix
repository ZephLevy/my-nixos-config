{ pkgs, ... }: {
  programs.foot = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
  };
}
