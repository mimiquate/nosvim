return {
  "tpope/vim-commentary",
  event = "VeryLazy",
  config = function()
    -- nerdcommenter mappings
    vim.keymap.set("n", "<leader>c<space>", "gcc", { remap = true, desc = "Comment or uncomment lines" })
    vim.keymap.set("v", "<leader>c<space>", "gc", { remap = true, desc = "Comment or uncomment lines" })
  end
}
