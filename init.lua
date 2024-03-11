local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
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
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      require("nvim-tree").setup({
        filters = {
          git_ignored = false,
        },
      })

      vim.keymap.set("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>")
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
  "tpope/vim-fugitive",
  "tpope/vim-rhubarb",
})

vim.opt.clipboard="unnamedplus"

vim.opt.expandtab=true
vim.opt.softtabstop=2
vim.opt.shiftwidth=2

vim.opt.number=true

vim.opt.iskeyword:append('-')

vim.cmd[[colorscheme tokyonight-night]]
