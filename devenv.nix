{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  imports = [
    ./assembly.nix
    #./vhdl.nix
  ];

  languages.assembly.enable = true;
  languages.c.enable = true;

  enterShell = ''
    echo "Welcome to the hell >:3"
  '';
}
