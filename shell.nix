{
  system ? builtins.currentSystem,
  sources ? import ./npins,
}:
let
  pkgs = import sources.nixpkgs { inherit system; };
in
pkgs.mkShell {
	buildInputs = with pkgs; [ typst typstyle tinymist ];

  shellHook = ''
    chmod +x scripts/*
  '';
}
