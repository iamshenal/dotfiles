-- some keymaps will be here
local set = vim.keymap.set
set("n", "{", ":bprev<CR>")
set("n", "}", ":bnext<CR>")
set("n", "<leader>bd", ":bdelete<CR>")
set("n", "<leader>|", ":vsplit<CR>")
set("n", "<C-->", ":split<CR>")
set("n", "<leader>nn", ":nohlsearch<CR>")
