return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      component_separators = '',
      disabled_filetypes = {
        'fugitiveblame',
      }
    },
    sections = {
      lualine_a = {
        { 'mode', fmt = function(str) return str:sub(1,1) end }
      },
      lualine_b = {},
      lualine_c = {
        {
          "filename",
          path = 1
        }
      },
      lualine_x = {'diff', 'branch'},
      lualine_y = {'diagnostics', 'filetype'},
      lualine_z = {'progress', 'location'}
    },
    extensions = {
      "nvim-tree"
    }
  }
}
