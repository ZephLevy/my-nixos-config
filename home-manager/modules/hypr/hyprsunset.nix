{
  services.hyprsunset.enable = true;
  services.hyprsunset.settings = {
    profile = [
      {
        time = "7:30";
        identity = true;
      }
      {
        time = "20:00";
        temperature = 4500;
        gamma = 0.8;
      }
    ];
  };
}
