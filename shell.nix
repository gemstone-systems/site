{
  mkShellNoCC,

  # extra tooling
  eslint_d,
  prettierd,
  nodejs,
  pnpm,
  typescript,
  typescript-language-server,
  astro-language-server,

  callPackage,
}:

let
  defaultPackage = callPackage ./default.nix { };
in
mkShellNoCC {
  inputsFrom = [ defaultPackage ];

  packages = [
    eslint_d
    prettierd
    nodejs
    pnpm
    typescript
    typescript-language-server
    astro-language-server
  ];

  shellHook = ''
    eslint_d start
    eslint_d status
  '';
}
