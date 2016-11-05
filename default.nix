let
  pkgs = import <nixpkgs> {};
    stdenv = pkgs.stdenv;
      dev = import /Users/bsweene/.nixpkgs/pkgs/dev.nix {};
  in rec  {
      env = stdenv.mkDerivation {
        name = "env";
        buildInputs = [
          pkgs.texLiveFull
        ];
      };
  }
