{ pkgs, ... }: {
  home.packages = with pkgs; [
    temurin-bin
    gradle
    kotlin-language-server
    ktlint
  ];
}
