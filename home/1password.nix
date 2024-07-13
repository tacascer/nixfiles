{ pkgs, lib, ... }:
let onePassPath = "~/.1password/agent.sock";
in {
  programs.ssh = {
    extraConfig = ''
            Host *
              IdentityAgent ${onePassPath}
      		'';
  };
  programs.git = {
    extraConfig = {
      "gpg \"ssh\"" = {
        program = "${lib.getExe' pkgs._1password-gui "op-ssh-sign"}";
      };
      commit = { gpgsign = true; };
      user = {
        email = "49887921+tacascer@users.noreply.github.com";
        user = "tacascer";
        signingKey =
          "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIP4F11qhcGezqNnuicjl99tvcXdIeymu0wdPLBivoZEg";
      };
    };
  };
}

