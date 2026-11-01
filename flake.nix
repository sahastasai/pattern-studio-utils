{
  description = "A small Bun workspace for pattern experiments";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { nixpkgs, ... }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in
    {
      devShells = forAllSystems (system:
        let pkgs = import nixpkgs { inherit system; };
        in {
          default = pkgs.mkShell {
            packages = [ pkgs.bun pkgs.git ];
            shellHook = ''
              echo "Pattern Studio workspace ready."
              echo "Try: bun run dev"
            '';
          };
          java = pkgs.mkShell {
            packages = [ pkgs.bun pkgs.git pkgs.jdk17 ];
            shellHook = ''
              echo "Pattern Studio Java workspace ready."
              echo "Try: javac java-lab/Main.java"
            '';
          };
        });
    };
}
