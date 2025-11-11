{
  services.hypridle.enable = true;
  services.hypridle.settings = {
    general = {
      before_sleep_cmd = "pidof hyprlock || hyprlock";
    };
  };
}
