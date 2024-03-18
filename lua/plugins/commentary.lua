return {
  "tpope/vim-commentary",
  event = "VeryLazy",
  keys = {
    -- nerdcommenter mappings
    {'<leader>c<space>', 'gcc', remap = true},
    {'<leader>c<space>', 'gc', mode = 'v', remap = true}
  }
}
