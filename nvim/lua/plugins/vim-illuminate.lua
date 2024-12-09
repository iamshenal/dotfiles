return {
	"RRethy/vim-illuminate",
	lazy = true,
	config = function()
		-- default configuration
		require("illuminate").configure({
			providers = {
				"lsp",
				"treesitter",
				"regex",
			},
			filetypes_denylist = {
				"neo-tree",
			},
			under_cursor = true,
			should_enable = function(bufnr)
				return true
			end,
			-- case_insensitive_regex: sets regex case sensitivity
			case_insensitive_regex = false,
		})
	end,
}
