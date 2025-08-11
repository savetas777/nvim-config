{
  perSystem =
    {
      pkgs,
      self',
      ...
    }:
    {
      devShells =
        let
          packages = [ self'.packages.write-flake ];
        in
        {
          default = self'.devShells.stable;

          stable = pkgs.mkShell {
            # shellHook = config.pre-commit.installationScript;

            strictDeps = true;
            nativeBuildInputs = packages;
          };

          nightly = pkgs.mkShell {
            # shellHook = config.pre-commit.installationScript;

            strictDeps = true;
            nativeBuildInputs = packages;
          };
        };
    };
}
