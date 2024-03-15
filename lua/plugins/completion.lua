return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp',
    "neovim/nvim-lspconfig"
  },
  config = function()
    local cmp = require('cmp')

    cmp.setup({
      completion = {
        keyword_length = 2
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
