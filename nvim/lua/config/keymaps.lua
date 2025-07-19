-- some keymaps will be here
local set = vim.keymap.set
set("n", "<leader>[", ":bprev<CR>")
set("n", "<leader>]", ":bnext<CR>")
set("n", "<leader>bd", ":bdelete<CR>")
set("n", "<leader>|", ":vsplit<CR>")
set("n", "<C-->", ":split<CR>")
set("n", "<leader><leader>", ":nohlsearch<CR>")
set("n", "<leader>-", ":Oil --float<CR>")
set("n", "<leader>ut", ":Undotreetoggle<CR>")
