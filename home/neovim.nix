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
    nixd
    nixfmt
    nodejs
    ripgrep
    rust-analyzer
    rustc
    rustfmt
    shfmt
    stylua
    tree-sitter
    xclip
  ];
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
  programs.lazygit.enable = true;
}
