-- The below table will be merged with the rest of the plugin specs under `/lua/plugins/*.lua`
return {
  "airblade/vim-gitgutter",
  "bronson/vim-trailing-whitespace",
  "nvim-tree/nvim-web-devicons",
  "RRethy/nvim-treesitter-endwise",
  {"tpope/vim-rhubarb", dependencies = { "tpope/vim-fugitive" }},
  { import = 'custom.plugins' }
}
