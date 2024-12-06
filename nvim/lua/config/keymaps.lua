-- some keymaps will be here
local set = vim.keymap.set
set("n", "H", ":bprev<CR>")
set("n", "L", ":bnext<CR>")
set("n", "<C-x>", ":bdelete<CR>")
