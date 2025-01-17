-- The below table will be merged with the rest of the plugin specs under `/lua/plugins/*.lua`
return {
  {
    'shaunsingh/nord.nvim',
    lazy = false,
    config = function()
      vim.g.nord_disable_background = true
      vim.g.nord_italic = false
    end
  },
  {
    "bronson/vim-trailing-whitespace",
    event = "VeryLazy"
  },
  {
    "nvim-tree/nvim-web-devicons",
    event = "VeryLazy"
  },
  {
    "RRethy/nvim-treesitter-endwise",
    event = "VeryLazy"
  },
  {
    "tpope/vim-rhubarb",
    event = "VeryLazy",
    dependencies = { "tpope/vim-fugitive" }
  }
}
