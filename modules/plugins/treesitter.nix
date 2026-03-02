{
  flake.modules.nvf.treesitter = {
    pkgs,
    config,
    ...
  }: {
    config.vim = {
      treesitter = {
        enable = true;

        grammars = pkgs.vimPlugins.nvim-treesitter.allGrammars;

        fold = true;
        # indent.enable = true;
        highlight.enable = true;
        # context.enable = true;
        # incrementalSelection.enable = true; # removed from treesitter?
        textobjects = {
          enable = true;
          setupOpts = {
            select = {
              enable = true;
              lookahead = true;
            };
          };
        };
      };

      autopairs.nvim-autopairs = {
        enable = true;
        setupOpts = {
          check_ts = config.vim.treesitter.enable;
        };
      };
    };
  };

  flake.modules.nvf.keymaps = {
    config.vim.treesitter.textobjects.setupOpts.select.keymaps = {
      "af" = "@function.outer";
      "if" = "@function.inner";

      "ac" = "@conditional.outer";
      "ic" = "@conditional.inner";

      "iC" = "@class.inner";
      "aC" = "@class.outer";

      "iB" = "@block.inner";
      "aB" = "@block.outer";

      # argument (p is already paragraph)
      "ia" = "@parameter.inner";
      "aa" = "@parameter.outer";

      # invocation
      "ii" = "@call.inner";
      "ai" = "@call.outer";
    };
  };
}
