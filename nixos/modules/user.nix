{ pkgs, ... }:
{
  programs.fish.enable = true;
  documentation.man.generateCaches = false;

  # virtualisation.docker.enable = true;
  virtualisation.containers.enable = true;
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "zeph" ];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
  virtualisation = {
    podman = {
      enable = true;

      dockerCompat = true;
      defaultNetwork.settings = {
        dns_enabled = true;
      };
    };
  };
  services.flatpak.enable = true;
  systemd.services.flatpak-repo = {
    wantedBy = [ "multi-user.target" ];
    path = [ pkgs.flatpak ];
    script = ''
      flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    '';
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
      packages = with pkgs; [ ];
    };
  };
  services.fwupd.enable = true;
}
