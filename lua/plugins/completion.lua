return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp',
    "neovim/nvim-lspconfig"
  },
  event = "VeryLazy",
  config = function()
    local cmp = require('cmp')

    cmp.setup({
      completion = {
        -- Can be quite distracting if enabled.
        -- Manual completion via <C-n> possible.
        autocomplete = false
      },
      window = {
        completion = cmp.config.window.bordered({ border = "rounded" }),
        documentation = cmp.config.window.bordered({ border = "rounded" })
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = false })
      }),
      sources = cmp.config.sources(
        {
          { name = 'nvim_lsp' },
          { name = 'buffer' },
        }
      )
    })
  end
}
