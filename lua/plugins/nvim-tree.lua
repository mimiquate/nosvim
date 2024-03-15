return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  keys = {
    {'<C-n>', '<Cmd>NvimTreeToggle<CR>'}
  },
  config = function()
    -- vim.g.loaded_netrw = 1 -- breaks :GBrowse in vim-fugitive, see https://github.com/tpope/vim-fugitive/issues/1010
    vim.g.loaded_netrwPlugin = 1

    -- https://github.com/nvim-tree/nvim-tree.lua/wiki/FAQ#why-do-i-see-spelling-highlights
    -- https://github.com/nvim-tree/nvim-tree.lua/issues/2658#issuecomment-1953208086
    vim.cmd([[
      :hi link NvimTreeExecFile NvimTreeNormal
    ]])

    require("nvim-tree").setup({
      filters = {
        git_ignored = false,
      },
      renderer = {
        -- Don't have any special highlighting for README and others
        special_files = {}
      }
    })
  end
}
