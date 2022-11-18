{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    gnumake
    agda
    gcc
    clang
    nodePackages.coffee-script
    ghc
    julia-bin
    nim
    perl
    php
    python3
    rakudo
    ruby
    rustc
    bash
    zsh
    fish
  ];
}
