let
  pkgs = import <nixpkgs> {};
    stdenv = pkgs.stdenv;
      dev = import /Users/bsweene/.nixpkgs/pkgs/dev.nix {};
      editor = import /Users/bsweene/.nixpkgs/pkgs/editor.nix { pkgs=pkgs; };
  in rec  {
      env = stdenv.mkDerivation {
        name = "env";
        buildInputs = [
          pkgs.texLiveFull
          pkgs.ghostscript
          editor.editor
        ];
      };
  }
