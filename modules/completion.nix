{
  flake.modules.nvf.completion = {
    config.vim = {
      autocomplete.blink-cmp = {
        enable = true;
        setupOpts = {
          sources.default = ["lsp" "path" "snippets" "buffer"];
        };
      };
    };
  };

  flake.modules.nvf.keymaps = {
    config.vim.autocomplete.blink-cmp.mappings = {
      complete = "<C-Space>";
      confirm = "<CR>";
      next = "<Tab>";
      previous = "<S-Tab>";
      close = "<C-e>";
      scrollDocsUp = "<C-d>";
      scrollDocsDown = "<C-f>";
    };
  };
}
