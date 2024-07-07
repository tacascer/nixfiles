{config, pkgs, lib, ...} : {
  xdg.configFile.nvim = {
    source = ./neovim-config;
    recursive = true;
  };
  home.packages = with pkgs; [
    ripgrep
    fd
    luajitPackages.luarocks
  ];
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    extraConfig = lib.strings.concatLines [
      "set tabstop=2 shiftwidth=2"
      "set expandtab"
      "set autoindent"
    ];
  };
  programs.lazygit.enable = true;
}
