{config, pkgs, lib, ...} : {
  xdg.configFile.nvim = {
    source = ./neovim-config;
    recursive = true;
  };
  home.packages = with pkgs; [
    ripgrep
    fd
    tree-sitter
    lua51Packages.lua
    lua51Packages.luarocks
    lua-language-server
  ];
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
  programs.lazygit.enable = true;
}
