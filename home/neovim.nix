{ pkgs, ... }: {
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
    nil
    nixfmt
    nodejs
    ripgrep
    shfmt
    stylua
    taplo
    tree-sitter
    vscode-js-debug
    xclip
    yarn
  ];
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
  };
  programs.lazygit.enable = true;
}
