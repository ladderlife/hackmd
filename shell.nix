with import <nixpkgs> {
  overlays = [
    (self: super: {
      nodejs = self.callPackage ./nodejs/v8.nix {};
    })
  ];
};
mkShell {
  buildInputs = [
    nodejs
    yarn
  ];
}
