{self, ...}: {
  flake.modules.nvf.lsp = {...}: {
    imports = with self.modules.nvf; [completion];

    config.vim = {
      lsp = {
        enable = true;
      };

      languages = {
        enableFormat = true;
        enableTreesitter = true;
        enableExtraDiagnostics = true;

        nix.enable = true;
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
