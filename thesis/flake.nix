{
  description = "Texlive Environment";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: rec {

    pkgs = import nixpkgs { system = "x86_64-linux"; };

    devShell.x86_64-linux = pkgs.mkShell {
      packages = [ pkgs.texlive.combined.scheme-full ];
    };

  };
}
