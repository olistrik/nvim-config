{
  flake.modules.nvf.lualine = { config, ... }: {
    config.vim = {
      statusline.lualine = {
        enable = true;
      };
    };
  };
}
