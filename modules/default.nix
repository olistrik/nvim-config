{
  inputs,
  self,
  ...
}: {
  systems = [
    "x86_64-linux"
  ];

  perSystem = {pkgs, ...}: {
    packages = let
      modules = self.modules.nvf;

      baseConfig = extraModules:
        (inputs.nvf.lib.neovimConfiguration {
          inherit pkgs;

          modules = with modules;
            [
              base
              keymaps
              wayland # TODO: make this opt-out.
            ]
            ++ extraModules;
        }).neovim;
    in rec {
      nvim-minimal = baseConfig [];
      nvim-full = baseConfig (with modules; [lsp]);
      default = nvim-minimal;
    };
  };
}
