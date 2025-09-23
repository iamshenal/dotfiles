return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		{
			"L3MON4D3/LuaSnip",
			-- follow latest release.
			version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
			-- install jsregexp (optional!).
			build = "make install_jsregexp",
		},
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"rafamadriz/friendly-snippets", -- useful snippets
		"onsails/lspkind.nvim", -- vs-code like pictograms
	},

	config = function()
		local cmp = require("cmp")

		local luasnip = require("luasnip")

		local lspkind = require("lspkind")

		local cmp_active = true

		vim.diagnostic.config({
			float = { border = "rounded" },
			virtual_text = {
				prefix = "",
				spacing = 2,
				source = "if_many",
			},
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "",
					[vim.diagnostic.severity.WARN] = "",
					[vim.diagnostic.severity.INFO] = "",
					[vim.diagnostic.severity.HINT] = "󰌵",
				},
			},
			underline = true,
			update_in_insert = false,
			severity_sort = true,
		})

		-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			window = {
				completion = {
					scrollbar = false,
					border = "rounded",
					winhighlight = "Normal:CmpNormal",
				},
				documentation = {
					scrollbar = false,
					border = "rounded",
					winhighlight = "Normal:CmpNormal",
				},
			},
			snippet = { -- configure how nvim-cmp interacts with snippet engine
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
				["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-t"] = cmp.mapping.complete(), -- show completion suggestions
				["<C-q>"] = cmp.mapping.abort(), -- close completion window
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<Tab>"] = cmp.mapping.confirm({ select = true }),
			}),
			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "nvim_lsp", prority = 1000 },
				{ name = "luasnip", prority = 750 }, -- snippets
				{ name = "buffer", prority = 500 }, -- text within current buffer
				{ name = "path", prority = 250 }, -- text within current buffer
				{
					name = "path",
					option = {
						pathMappings = {
							["@"] = "${folder}/src",
						},
					},
				}, -- file system paths
			}),
			cmp.setup.filetype({ "javascriptreact", "typescriptreact" }, {
				sources = cmp.config.sources({
					{ name = "nvim_lsp", priority = 2000 }, -- force LSP above snippets
					{ name = "luasnip", priority = 500 },
					{ name = "buffer", priority = 250 },
					{ name = "path", priority = 100 },
				}),
			}),

			-- configure lspkind for vs-code like pictograms in completion menu
			formatting = {
				format = lspkind.cmp_format({
					maxwidth = 50,
					ellipsis_char = "...",
				}),
			},
		})
	end,
}
