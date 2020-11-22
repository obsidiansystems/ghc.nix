{
  "x86_64-linux" = import ./. { nixpkgsArgs.system = "x86_64-linux"; };
  "i686-linux" = import ./. {
    nixpkgsArgs = {
      system = "i686-linux";
      overlays = [
        (self: super: {
          haskellPackages = super.haskellPackages.override {
            overrides = hself: hsuper: {
              aeson = self.haskell.lib.dontCheck hsuper.aeson;
            };
          };
        })
      ];
    };
  };
}
