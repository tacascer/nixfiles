{ pkgs, ... }: {
  home.packages = with pkgs; [
    gradle
    jdt-language-server
    kotlin-language-server
    ktlint
    temurin-bin
  ];
}
