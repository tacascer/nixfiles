{ pkgs, ... }: { home.packages = with pkgs; [ temurin-bin gradle ]; }
