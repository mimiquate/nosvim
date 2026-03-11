-- The below table will be merged with the rest of the plugin specs under `/lua/plugins/*.lua`

local plugins = {
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
}

if pcall(function() require("custom.plugins") end) then
  table.insert(
    plugins,
    { import = 'custom.plugins' }
  )
end

return plugins
