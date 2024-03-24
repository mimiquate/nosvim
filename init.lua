require("plugin_manager")

vim.opt.clipboard = "unnamedplus"

vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true

vim.opt.hlsearch = false

-- Avoids text flicker when gitgutter writes signs to the signcolumn by letting
-- it be always open.
vim.opt.signcolumn = "yes"

vim.opt.iskeyword:append('-')

-- Retain undo history to be able to undo changes even after closing and
-- reopening file buffer.
vim.opt.undofile = true

-- Keymaps
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move cursor to left windows" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move cursor to windows below" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move cursor to windows above" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move cursor to right windows" })

if (vim.fn.filereadable(vim.fs.normalize("~/.nvim.lua")) == 1) then
  vim.cmd("source ~/.nvim.lua")
end
