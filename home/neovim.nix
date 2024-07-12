{pkgs, ...} : {
  home.file.".config/nvim" = {
    source = ./neovim-config;
    recursive = true;
  };
  home.packages = with pkgs; [
    fd
    fish
    lua-language-server
    luajit
    luajitPackages.jsregexp
    luajitPackages.luarocks
    nixd
    ripgrep
    stylua
    tree-sitter
  ];
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
  programs.lazygit.enable = true;
}
