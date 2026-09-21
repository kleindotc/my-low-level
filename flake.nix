{
  description = "My-Low-Level - A personal laboratory to understand how things work from the most basic.";
  inputs = {
    nixpkgs.url = "github:cachix/devenv-nixpkgs/rolling";
    devenv.url = "github:cachix/devenv";
  };

  outputs =
    {
      nixpkgs,
      devenv,
      ...
    }@inputs:
    let
      forAllSystems =
        f:
        nixpkgs.lib.getAttrs nixpkgs.lib.system.flakeExposed (
          system:
          f {
            pkgs = nixpkgs.legacyPackages.${system};
            inherit system;
          }
        );
    in
    {
      devShells = forAllSystems (
        { pkgs, ... }: {
          default = devenv.lib.mkShell {
            inherit inputs pkgs;
            modules = [ ./devenv.nix ];
          };
        }
      );
    };
}
