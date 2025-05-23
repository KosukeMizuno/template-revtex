{
  description = "LaTeX with nix flake";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          packages = [
            pkgs.texliveFull
            pkgs.git
            pkgs.arxiv-latex-cleaner
          ];
          shellHook = ''
            echo "nix shell for revtex is loaded."
          '';
        };
      }
    );
}
