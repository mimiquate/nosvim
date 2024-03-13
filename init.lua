require("plugin_manager")

vim.opt.clipboard="unnamedplus"

vim.opt.expandtab=true
vim.opt.softtabstop=2
vim.opt.shiftwidth=2

vim.opt.number=true

vim.opt.iskeyword:append('-')

vim.cmd[[colorscheme onedark]]

if (vim.fn.filereadable(vim.fs.normalize("~/.nvim.lua")) == 1) then
  vim.cmd("source ~/.nvim.lua")
end
