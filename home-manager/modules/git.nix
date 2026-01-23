{ config, pkgs, ... }:
{
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
      alias = {
        gl = "log --graph --oneline --decorate";
      };
      credential.helper = "/run/current-system/sw/bin/git-credential-libsecret";
      pull.rebase = true;
    };
  };
}
