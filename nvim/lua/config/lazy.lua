-- Bootstrap lazy.nvimlocal lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
-- using lazy into the runtimepath of neovim
vim.opt.runtimepath:prepend(lazypath)
vim.g.mapleader = " "

vim.g.loaded_netrwPlugin = 0

require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "plugins" },
		{ import = "plugins.lsp" },

		-- disabling the change detection notificaiton
	},
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})

-- telescpoe function
local actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				["<c-d>"] = actions.delete_buffer,
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-d>"] = actions.delete_buffer,
			},
			n = {
				["<c-d>"] = actions.delete_buffer,
				["dd"] = actions.delete_buffer,
			},
		},
	},
})
