{ config, pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "Zeph Levy";
    userEmail = "write2zeph@gmail.com";
    extraConfig = {
      core = {
        editor = "hx";
      };
      init = {
        defaultBranch = "main";
      };
      credential.helper = "/run/current-system/sw/bin/git-credential-libsecret";
      pull.rebase = true;
    };
  };
}
