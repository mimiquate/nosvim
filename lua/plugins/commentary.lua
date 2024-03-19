return {
  "tpope/vim-commentary",
  event = "VeryLazy",
  config = function()
    -- nerdcommenter mappings
    vim.keymap.set("n", "<leader>c<space>", "gcc", { remap = true })
    vim.keymap.set("v", "<leader>c<space>", "gc", { remap = true })
  end
}
