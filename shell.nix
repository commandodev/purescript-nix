{ fynderConfig ? <fynder/config/fynder.conf.test> }:

with import <nixpkgs> {};

let haskellPackages = pkgs.haskellPackages.override {
      extension = self: super: {
        cmdtheline = self.callPackage ./cmdtheline.nix {};
        purescript = self.callPackage ./purescript.nix {};
      };
    };
    nodePkgs = pkgs.nodePackages;
in rec {
   pursEnv = stdenv.mkDerivation rec {
       name = "purescript-env";
       version = "1.1.1.1";
       src = ./.;
       buildInputs = [ haskellPackages.purescript nodePkgs.bower nodePkgs.grunt-cli git ];
   };
}

