{self, ...}: {
  flake.modules.nvf.base = {...}: {
    imports = with self.modules.nvf; [
      theming

      lualine
      telescope
      git
      treesitter
      autoformat
      autoindent
    ];

    vim = {
      ui.colorizer.enable = true;
      notes.todo-comments.enable = true;

      mini = {
        ai.enable = true;
        comment.enable = true;
        surround.enable = true;
      };

      globals.mapleader = " ";

      options = {
        number = true; # show current line number.
        relativenumber = true; # show other lines as relative numbers.
        scrolloff = 5; # keep at least 5 lines visible above/below cursor.
        incsearch = true; # show first match while searching.
        hlsearch = false; # don't keep previous searches highlighted.
        mouse = "nvchr"; # allow mouse in all modes but insert.
        signcolumn = "yes"; # always show the sign column.
      };

      keymaps = [
        {
          key = ";";
          action = ":";
          mode = "";
          noremap = false;
        }
        {
          key = ";;";
          action = ";";
          mode = "";
        }
      ];

      clipboard = {
        enable = true;
        registers = "unnamed,unnamedplus";
      };
    };
  };
}
