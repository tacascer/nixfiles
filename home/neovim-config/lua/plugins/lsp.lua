return {
  { "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              runtime = {
                version = "LuaJit",
              },
              workspace = {
                library = {
                  vim.env.VIMRUNTIME,
                  "${3rd}/luv/library",
                },
              },
              hint = {
                enable = true,
              },
            },
          },
        },
      },
    },
  },
}
