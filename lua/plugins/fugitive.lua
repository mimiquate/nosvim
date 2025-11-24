return {
  "tpope/vim-fugitive",
  event = "VeryLazy",
  config = function()
    vim.keymap.set("n", "<C-\\>", "<cmd>Ggrep <cword><enter>", { remap = true, desc = "Grep current word" })
  end
}
