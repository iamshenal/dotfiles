-- auto format on save
-- vim.api.nvim_create_autocmd("LspAttach", {
--   group = vim.api.nvim_create_augroup("lsp", { clear = true }),
--   callback = function(args)
--     -- 2
--     vim.api.nvim_create_autocmd("BufWritePre", {
--       -- 3
--       buffer = args.buf,
--       callback = function()
--         -- 4 + 5
--         vim.lsp.buf.format { async = false, id = args.data.client_id }
--       end,
--     })
--   end
-- })
--

--highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", {}),
	desc = "Hightlight selection on yank",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 50 })
	end,
})
