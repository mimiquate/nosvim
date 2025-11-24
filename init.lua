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

vim.o.scrolloff = 4

-- Keymaps --

-- nerdcommenter mappings
vim.keymap.set("n", "<leader>c<space>", "gcc", { remap = true, desc = "Comment or uncomment lines" })
vim.keymap.set("v", "<leader>c<space>", "gc", { remap = true, desc = "Comment or uncomment lines" })

-- Move current line/s under cursor up or down
vim.keymap.set("n", "J", ":m .+1<CR>==", { desc = "Move current line down" })
vim.keymap.set("n", "K", ":m .-2<CR>==", { desc = "Move current line up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move current line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move current line up" })

if (vim.fn.filereadable(vim.fs.normalize("~/.nvim.lua")) == 1) then
  vim.cmd("source ~/.nvim.lua")
end
