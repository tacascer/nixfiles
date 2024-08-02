{ pkgs, ... }: {
  imports = [ ./jvm.nix ./js.nix ./rust.nix ];
  home = { packages = with pkgs; [ gnumake ]; };
}
