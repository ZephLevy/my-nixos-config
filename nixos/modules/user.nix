{ pkgs, ...} : {
  programs.fish.enable = true;
  documentation.man.generateCaches = false;

  # virtualisation.docker.enable = true;
  virtualisation.containers.enable = true;
  virtualisation = {
    podman = {
      enable = true;

      dockerCompat = true;
      defaultNetwork.settings = { dns_enabled = true; };
    };
  };

  users = {
    defaultUserShell = pkgs.bash;
    users.zeph = {
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "networkmanager"
        "video"
        "kvm"
        "docker"
      ];
      packages = with pkgs; [];
    };
  };
  services.fwupd.enable = true;
}
