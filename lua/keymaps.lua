-- Move current line/s under cursor up or down
vim.keymap.set("n", "J", ":m .+1<CR>==", { desc = "Move current line down" })
vim.keymap.set("n", "K", ":m .-2<CR>==", { desc = "Move current line up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move current line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move current line up" })

 -- Navigate through windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move cursor to left windows" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move cursor to windows below" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move cursor to windows above" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move cursor to right windows" })
