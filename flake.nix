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
        tex = pkgs.texlive.combine {
          inherit (pkgs.texlive)
            scheme-medium
            revtex
            latexmk
            amsmath
            hyperref
            graphics
            bibtex
            xcolor
            ;
        };
      in
      {
        devShells.default = pkgs.mkShell {
          packages = [
            tex
            pkgs.git
          ];
          shellHook = ''
            echo "nix shell for revtex is loaded."
          '';
        };
      }
    );
}
