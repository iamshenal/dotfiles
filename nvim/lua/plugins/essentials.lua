return {
	--tmux navigator
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},

	-- colorizer
	{
		"norcalli/nvim-colorizer.lua",
	},

	-- undo-tree
	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>UU", vim.cmd.UndotreeToggle)
		end,
	},
}
