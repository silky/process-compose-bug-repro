{
  inputs = {
    nixpkgs.url     = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    easy-purescript-nix = {
      url = "github:justinwoo/easy-purescript-nix";
      flake = false;
    };
  };

  outputs = inputs: with inputs; flake-utils.lib.eachDefaultSystem (system:
  let pkgs = import nixpkgs { inherit system; };
      easy-ps = import easy-purescript-nix { inherit pkgs; };
  in rec {
    devShell = pkgs.mkShell {
      packages = with pkgs; [
        easy-ps.psa
        easy-ps.purs
        easy-ps.spago
        process-compose
        nodejs
      ];
    };
  });
}
