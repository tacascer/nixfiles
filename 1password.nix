{config, pkgs, ... } :
{ # Enable 1password
  programs._1password.enable = true;
  programs._1password-gui.enable = true;
}

