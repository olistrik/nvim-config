{
  flake.modules.nvf.wayland = { pkgs, ... }: {
    vim = {
      clipboard.providers = {
        wl-copy.enable = true;
      };
    };
  };
}
