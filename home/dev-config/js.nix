{ pkgs, ... }: {
  home.packages = with pkgs; [ nodePackages.prettier markdownlint-cli2 ];
}
