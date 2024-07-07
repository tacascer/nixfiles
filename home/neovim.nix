{config, pkgs, lib, ...} : {
  xdg.configFile.nvim = {
    source = ./neovim-config;
    recursive = true;
  };
  home.packages = with pkgs; [
    ripgrep
    fd
    luajitPackages.luarocks
    luajit
  ];
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
  programs.lazygit.enable = true;
}
