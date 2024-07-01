{ config, pkgs, lib, ... } :
let onePassPath = "~/.1password/agent.sock";
in {
	programs.ssh = {
		enable = true;
		extraConfig = ''
		Host *
		  IdentityAgent ${onePassPath}
		'';
		};
	  programs.git = {
	    enable = true;
	    extraConfig = {
	      init = {
	        defaultBranch = "main";
	      }
	      gpg = {
		format = "ssh";
	      };
	      "gpg \"ssh\"" = {
		program = "${lib.getExe' pkgs._1password-gui "op-ssh-sign"}";
	      };
	      commit = {
		gpgsign = true;
	      };

	      user = {
		signingKey = "...";
	      };
	    };
	  };
	home.stateVersion = "24.05";
}
