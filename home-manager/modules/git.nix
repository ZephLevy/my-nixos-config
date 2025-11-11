{ config, pkgs, ... }: {
  programs.git = {
    enable = true;
    settings = {
      user.name = "Zeph Levy";
      user.email = "171337931+ZephLevy@users.noreply.github.com";
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
