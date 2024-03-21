require("plugin_manager")

vim.opt.clipboard="unnamedplus"

vim.opt.expandtab=true
vim.opt.softtabstop=2
vim.opt.shiftwidth=2

vim.opt.number=true

vim.opt.hlsearch=false

-- Avoids text flicker when gitgutter writes signs to the signcolumn by letting
-- it be always open.
vim.opt.signcolumn="yes"

vim.opt.iskeyword:append('-')

-- Retain undo history to be able to undo changes even after closing and
-- reopening file buffer.
vim.opt.undofile = true

if (vim.fn.filereadable(vim.fs.normalize("~/.nvim.lua")) == 1) then
  vim.cmd("source ~/.nvim.lua")
end
