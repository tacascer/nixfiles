{ pkgs, ... }: {
  imports = [ ./neovim.nix ./zsh.nix ./1password.nix ./discord.nix ];
  home = {
    username = "tacascer";
    homeDirectory = "/home/tacascer";
    packages = with pkgs; [ clang just ];
  };
  programs.ssh = { enable = true; };
  programs.git = {
    enable = true;
    extraConfig = {
      init = { defaultBranch = "main"; };
      gpg = { format = "ssh"; };
      pull = { rebase = true; };
    };
  };
  home.stateVersion = "24.05";
  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
