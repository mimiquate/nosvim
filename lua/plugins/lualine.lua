return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      disabled_filetypes = {
        'fugitiveblame',
      }
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {},
      lualine_c = {
        {
          "filename",
          path = 1
        }
      },
      lualine_x = {'filetype'},
      lualine_y = {'branch', 'diff', 'diagnostics'},
      lualine_z = {'progress', 'location'}
    },
    extensions = {
      "nvim-tree"
    }
  }
}
