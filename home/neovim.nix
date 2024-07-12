{pkgs, ...} : {
  home.file.".config/nvim" = {
    source = ./neovim-config;
    recursive = true;
  };
  home.packages = with pkgs; [
    ripgrep
    fd
    nixd
    tree-sitter
    luajit
    luajitPackages.luarocks
    luajitPackages.jsregexp
    lua-language-server
    stylua
    fish
  ];
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
  programs.lazygit.enable = true;
}
