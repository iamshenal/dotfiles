return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	cmd = "Telescope",
	version = false,
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-telescope/telescope-ui-select.nvim",
	},
	keys = {
		{ "<leader>ff", ":Telescope find_files<CR>", silent = true, desc = "Find Files" },
		{ "<leader>fb", ":Telescope buffers<CR>", silent = true, desc = "Find Buffers" },
		{ "<leader>fg", ":Telescope live_grep<CR>", silent = true, desc = "Live Grep" },
		{ "<leader>fk", ":Telescope keymaps<CR>", silent = true, desc = "Find Keymaps" },
	},
	config = function()
		local actions = require("telescope.actions")
		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-d>"] = actions.delete_buffer,
					},
				},
			},
		})
	end,
}
