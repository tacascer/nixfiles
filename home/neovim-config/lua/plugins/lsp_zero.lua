return {
  { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              runtime = {
                version = 'LuaJit',
              },
              workspace = {
                library = {
                  vim.env.VIMRUNTIME,
                  "${3rd}/luv/library"
                },
              },
              hint = {
                enable = true,
              },
            }
          }
        }
      }
    }
  },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },
  { 'L3MON4D3/LuaSnip' },
}
