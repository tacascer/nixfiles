{ pkgs, ... }: {
  home.file.".config/nvim" = {
    source = ./neovim-config;
    recursive = true;
  };
  home.packages = with pkgs; [
    cargo
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
    rust-analyzer
    rustc
    rustfmt
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
    vimAlias = true;
  };
  programs.lazygit.enable = true;
}
