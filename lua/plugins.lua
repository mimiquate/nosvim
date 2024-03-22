-- The below table will be merged with the rest of the plugin specs under `/lua/plugins/*.lua`
return {
  {
    "airblade/vim-gitgutter",
    event = "VeryLazy"
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
  },
  {
    "tpope/vim-unimpaired",
    event = "VeryLazy",
  }
}
