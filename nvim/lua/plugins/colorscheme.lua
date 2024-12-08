return {
	-- gruvbox-material
	-- {
	-- 	"sainnhe/gruvbox-material",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		-- Optionally configure and load the colorscheme
	-- 		-- directly inside the plugin declaration.
	-- 		vim.g.gruvbox_material_enable_italic = false
	-- 		vim.g.gruvbox_material_disable_italic_comment = "1"
	-- 		vim.g.gruvbox_material_background = "hard"
	-- 		vim.cmd.colorscheme("gruvbox-material")
	-- 	end,
	-- },

	-- zenbones
	-- {
	-- "zenbones-theme/zenbones.nvim",
	-- -- Optionally install Lush. Allows for more configuration or extending the colorscheme
	-- -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
	-- -- In Vim, compat mode is turned on as Lush only works in Neovim.
	-- dependencies = "rktjmp/lush.nvim",
	-- lazy = false,
	-- priority = 1000,
	-- -- you n set set configuration options here
	-- config = function()
	-- 	vim.g.italic_comments = false
	-- 	vim.cmd.colorscheme("duckbones")
	-- 	end,
	-- },

	-- tundra

	{
		"sam4llis/nvim-tundra",
		config = function()
			require("nvim-tundra").setup({
				transparent_background = false,
				dim_inactive_windows = {
					enabled = false,
					color = nil,
				},
				sidebars = {
					enabled = true,
					color = nil,
				},
				editor = {
					search = {},
					substitute = {},
				},
				syntax = {
					booleans = { bold = true, italic = false },
					comments = { bold = true, italic = false },
					conditionals = {},
					constants = { bold = true },
					fields = {},
					functions = {},
					keywords = {},
					loops = {},
					numbers = { bold = true },
					operators = { bold = true },
					punctuation = {},
					strings = {},
					types = { italic = false },
				},
				diagnostics = {
					errors = {},
					warnings = {},
					information = {},
					hints = {},
				},
				plugins = {
					lsp = true,
					semantic_tokens = true,
					treesitter = true,
					telescope = true,
					nvimtree = true,
					cmp = true,
					context = true,
					dbui = true,
					gitsigns = true,
					neogit = true,
					textfsm = true,
				},
				overwrite = {
					colors = {},
					highlights = {},
				},
			})

			vim.g.tundra_biome = "arctic" -- 'arctic' or 'jungle'
			vim.opt.background = "dark"
			vim.cmd("colorscheme tundra")
		end,
	},
	-- },
}
