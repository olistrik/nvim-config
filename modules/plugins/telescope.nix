{ self, ... }: {
  flake.modules.nvf.telescope = { pkgs, config, lib, options, ... }: {
    imports = with self.modules.nvf; [
      telescope-file-browser
      telescope-fzf-native
    ];

    vim.telescope.enable = true;
  };

  flake.modules.nvf.keymaps = {
    config.vim.telescope.mappings = {
      findFiles = "<C-p>";
      liveGrep = "<C-f>";

      # telescope-file-browser.nvim
      browseRelative = "<leader><tab>";
    };
  };
}
