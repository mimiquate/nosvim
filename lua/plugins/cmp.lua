return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    'rafamadriz/friendly-snippets'
  },
  config = function()
    local cmp = require('cmp')

    cmp.setup({
      completion = {
        keyword_length = 3
      },
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = false })
      }),
      sources = cmp.config.sources(
        {
          { name = 'vsnip' },
          { name = 'buffer' },
        }
      )
    })
  end
}
