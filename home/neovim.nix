{config, pkgs, lib, ...} : {
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
}
