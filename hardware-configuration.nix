{
  config,
  lib,
  ...
}: {
  hardware = {
    trackpoint = {
      enable = true;
      emulateWheel = true;
      fakeButtons = true;
      sensitivity = 128;
      speed = 97;
    };
    cpu = {
      intel = {
        updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
      };
    };
  };
}
