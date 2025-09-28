# stolen from https://github.com/tgirlcloud/nix-templates/blob/main/node/default.nix
{ lib, buildNpmPackage }:

buildNpmPackage {
  pname = "gemstone-site";
  version = "0.0.1";

  src = ./.;

  npmDepsHash = lib.fakeHash;

  meta = {
    description = "main site at https://gmstn.systems/";
    homepage = "";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "example";
  };
}
