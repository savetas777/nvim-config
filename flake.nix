# DO-NOT-EDIT. This file was auto-generated using github:vic/flake-file.
# Use `nix run .#write-flake` to regenerate it.
{
  description = "savetas777's personal Neovim configuration made with Nixvim";

  outputs = inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } (inputs.import-tree ./modules);

  inputs = {
    flake-compat = {
      flake = false;
      url = "github:edolstra/flake-compat";
    };
    flake-file = {
      owner = "vic";
      ref = "pull/27/head";
      repo = "flake-file";
      type = "github";
    };
    flake-parts = {
      inputs = {
        nixpkgs-lib = {
          follows = "nixpkgs";
        };
      };
      owner = "hercules-ci";
      repo = "flake-parts";
      type = "github";
    };
    git-hooks = {
      inputs = {
        flake-compat = {
          follows = "flake-compat";
        };
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      owner = "cachix";
      repo = "git-hooks.nix";
      type = "github";
    };
    import-tree = {
      owner = "vic";
      repo = "import-tree";
      type = "github";
    };
    nixpkgs = {
      owner = "nixos";
      ref = "nixpkgs-unstable";
      repo = "nixpkgs";
      type = "github";
    };
    systems = {
      owner = "nix-systems";
      repo = "default";
      type = "github";
    };
    treefmt-nix = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      owner = "numtide";
      repo = "treefmt-nix";
      type = "github";
    };
  };

}
