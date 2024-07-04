{ config, pkgs, lib, ... } :
let onePassPath = "~/.1password/agent.sock";
in {
	home = {
		username = "tacascer";
		homeDirectory = "/home/tacascer";
	};
	programs.ssh = {
		enable = true;
		extraConfig = ''
      Host *
        IdentityAgent ${onePassPath}
		'';
		};
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
  programs.git = {
    enable = true;
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
      gpg = {
        format = "ssh";
      };
      "gpg \"ssh\"" = {
        program = "${lib.getExe' pkgs._1password-gui "op-ssh-sign"}";
      };
      commit = {
        gpgsign = true;
      };
      pull = {
        rebase = true;
      };
      user = {
        email = "49887921+tacascer@users.noreply.github.com";
        user = "tacascer";
        signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIP4F11qhcGezqNnuicjl99tvcXdIeymu0wdPLBivoZEg";
      };
    };
  };
	home.stateVersion = "24.05";
	# Let home Manager install and manage itself.
	programs.home-manager.enable = true;
}
