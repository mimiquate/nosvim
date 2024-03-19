return {
  "tpope/vim-unimpaired",
  event = "VeryLazy",
  config = function()
    vim.keymap.set("n", "<C-Up>", "[e", { remap = true })
    vim.keymap.set("n", "<C-Down>", "]e", { remap = true })
    vim.keymap.set("v", "<C-Up>", "[egv", { remap = true })
    vim.keymap.set("v", "<C-Down>", "]egv", { remap = true })
  end
}
