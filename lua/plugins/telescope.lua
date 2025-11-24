return {
  'nvim-telescope/telescope.nvim',
  version = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  event = "VeryLazy",
  config = function()
    require('telescope').setup({
      pickers = {
        buffers = {
          ignore_current_buffer = true,
          sort_mru = true,
        }
      }
    })

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<C-b>', builtin.buffers, { desc = "List open buffers" })
    vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = "Search files (respects .gitignore)" })
    vim.keymap.set(
      'n',
      '<C-g>',
      builtin.live_grep,
      { desc = "Search for a string (respects .gitignore)" }
    )
  end
}
