return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	keys = {
		{ "<leader>e", ":Neotree toggle left<CR>", silent = true, desc = "File Explorer" },
	},

	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true, -- Show hidden files
					hide_dotfiles = false, -- Don't hide files starting with .
					hide_gitignored = false, -- Optional: Show .gitignored files too
				},
			},
			window = {
				position = "left",
			},
		})
	end,
}
