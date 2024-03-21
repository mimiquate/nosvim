return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
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
    vim.keymap.set('n', '<C-b>', builtin.buffers, { desc = "Find buffers" })
    vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = "Find files" })
    vim.keymap.set('n', '<C-g>', builtin.live_grep, { desc = "Grep files" })
  end
}
