{
  flake.modules.nvf.theming = { pkgs, ... }: {

    config.vim = {
      extraPlugins = {
        neovim-ayu = {
          package = pkgs.vimPlugins.neovim-ayu;
          setup = ''
            require('ayu').setup({
              mirage = true,
              terminal = false,
              overrides = {},
            })
            require('ayu').colorscheme()
          '';
        };
      };

      statusline.lualine.theme = "ayu_mirage";

      # not sure how to add ayu to themes.
      # theme = {
      #   enable = true;
      #   name = "base16";
      # };
    };
  };
}
