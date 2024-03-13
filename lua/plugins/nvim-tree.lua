return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
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
}
