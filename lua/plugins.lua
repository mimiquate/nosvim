return {
  "airblade/vim-gitgutter",
  "bronson/vim-trailing-whitespace",
  {
    "folke/tokyonight.nvim",
    config = function()
      require('tokyonight').setup({
        transparent = true,
        styles = {
          floats = "transparent",
          sidebars = "transparent"
        }
      })
    end
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
      vim.keymap.set('n', '<C-b>', builtin.buffers, {})

      require('telescope').setup({
        pickers = {
          buffers = {
            ignore_current_buffer = true,
            sort_mru = true,
          }
        }
      })
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    keys = {
      {'<C-n>', '<Cmd>NvimTreeToggle<CR>'}
    },
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      require("nvim-tree").setup({
        filters = {
          git_ignored = false,
        },
      })
    end
  },
  "nvim-tree/nvim-web-devicons",
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require('nvim-treesitter.configs').setup({
        highlight = {
          enable = true,
        },
        indent = {
          enable = true
        },
        endwise = {
          enable = true
        }
      })
    end
  },
  "RRethy/nvim-treesitter-endwise",
  {
    "tpope/vim-commentary",
    keys = {
      -- nerdcommenter mappings
      {'<leader>c<space>', 'gcc', remap = true},
      {'<leader>c<space>', 'gc', mode = 'v', remap = true}
    }
  },
  {
    "tpope/vim-fugitive",
    keys = {
      {'<C-\\>', '<cmd>Ggrep <cword><enter>', remap = true}
    }
  },
  "tpope/vim-rhubarb",
  {
    "tpope/vim-unimpaired",
    lazy = false,
    keys = {
      {'<C-Up>', '[e', remap = true},
      {'<C-Down>', ']e', remap = true},
      {'<C-Up>', '[egv', mode = 'v', remap = true},
      {'<C-Down>', ']egv', mode = 'v', remap = true}
    }
  }
}
