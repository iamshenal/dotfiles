return {
	{
		"vague2k/vague.nvim",
		config = function()
			-- NOTE: you do not need to call setup if you don't want to.
			require("vague").setup({
				-- optional configuration here
				transparent = false,
				vim.cmd("colorscheme vague"),
				vim.cmd(":hi statusline guibg=NONE"),
			})
		end,
	},
}
