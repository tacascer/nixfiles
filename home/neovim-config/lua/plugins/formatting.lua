return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        nix = { "nixfmt" },
        rust = { "rustfmt" },
        toml = { "taplo" },
      },
    },
  },
}
