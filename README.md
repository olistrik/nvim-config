# Nix + Neovim à la Oli

This repository describes my personal NeoVim configuration. It's Nix-powered
and built with [nvf](https://github.com/NotAShelf/nvf); the layout now uses the
[dendritic](https://github.com/mightyiam/dendritic) pattern with
[flake-parts](https://github.com/numtide/flake-parts).

The flake exports two packages at the moment:

- `nvim-minimal`: This is my base nvim config with my keymaps and all the plugins I cannot live without. This is also the default package.
- `nvim-full`: This contains everything from minimal + the LSP plugins and codecompanion AI assistant.

At present, this project is mainly for my own benifit. I'm _trying_ to keep custom nvf plugins, configuration, and keybindings seperate; however this is my first stab at the dendritic pattern, so it'll likely take a few more itterations before I can provide examples of how to consume these modules.

