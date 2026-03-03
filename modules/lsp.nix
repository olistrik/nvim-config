{self, ...}: {
  flake.modules.nvf.lsp = {lib, ...}: {
    imports = with self.modules.nvf; [completion];

    config.vim = {
      lsp = {
        enable = true;
        lspconfig.enable = true;
        # servers.ty.cmd = lib.mkForce ["ty" "server"];
      };

      languages = {
        enableFormat = true;
        enableTreesitter = true;
        nix = {
          enable = true;
          format.type = ["nixfmt"];
        };
        lua = {
          enable = true;
        };
        python = {
          enable = true;
          lsp.servers = ["ty"];
        };
      };
    };
  };

  flake.modules.nvf.keymaps = {
    config.vim.lsp.mappings = {
      goToDefinition = "gd";
      goToDeclaration = "gD";
      goToType = "gt";

      listReferences = "gr";
      listImplementations = "gi";
      listDocumentSymbols = "gs";

      hover = "K";
      signatureHelp = "gk";
      codeAction = "ga";

      format = "<leader>fm";
      renameSymbol = "<leader>rn";

      previousDiagnostic = "g[";
      nextDiagnostic = "g]";
    };
  };
}
