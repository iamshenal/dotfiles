return {
	{
		"echasnovski/mini.nvim",
		version = false, -- always latest
		config = function()
			require("mini.statusline").setup()
		end,
		enabled = false,
	},
}
