{ pkgs ? import <nixpkgs> {
    inherit system;
  }
, system ? builtins.currentSystem
}:

let
  nodePackages = import ./composition.nix {
    inherit pkgs system;
  };
in
nodePackages // {
  "zenn-cli.nix" = nodePackages.zenn-cli.override {
    buildInputs = with pkgs; [ vips ];
  };
}
