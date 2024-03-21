return {
  "tpope/vim-unimpaired",
  event = "VeryLazy",
  config = function()
    vim.keymap.set("n", "<C-Up>", "[e", { remap = true, desc = "Move line up" })
    vim.keymap.set("n", "<C-Down>", "]e", { remap = true, desc = "Move line down" })
    vim.keymap.set("v", "<C-Up>", "[egv", { remap = true, desc = "Move visual selection up" })
    vim.keymap.set("v", "<C-Down>", "]egv", { remap = true, desc = "Move visual selection down" })
  end
}
