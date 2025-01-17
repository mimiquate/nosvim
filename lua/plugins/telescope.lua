return {
  'nvim-telescope/telescope.nvim',
  version = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  event = "VeryLazy",
  config = function()
    require('telescope').setup({
      defaults = {
        mappings = {
          i = {
            ["<C-Down>"] = require('telescope.actions').cycle_history_next,
            ["<C-Up>"] = require('telescope.actions').cycle_history_prev,
          },
        }
      },
      pickers = {
        buffers = {
          ignore_current_buffer = true,
          sort_mru = true,
        }
      }
    })

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<C-b>', builtin.buffers, { desc = "Lists open buffers in current neovim instance" })
    vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = "Search for files (respects .gitignore)" })
    vim.keymap.set(
      'n',
      '<C-g>',
      builtin.live_grep,
      { desc = "Search for a string and get results live as you type (respects .gitignore)" }
    )
  end
}
