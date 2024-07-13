{ config, pkgs, ... }: {
  home.packages = with pkgs; [ thefuck ];
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = { };

    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };

    plugins = [{
      name = "git";
      file = "plugins/git/git.plugin.zsh";
      src = pkgs.fetchFromGitHub {
        owner = "ohmyzsh";
        repo = "ohmyzsh";
        rev = "master";
        hash = ''
          sha256-prSyf71qjCY7WBOb9rshF+FFMnGHA+r/mZ4
          X5wUJrTY= '';
      };
    }];

    oh-my-zsh = {
      enable = true;
      plugins = [ "thefuck" ];
      theme = "robbyrussell";
    };
  };
}
