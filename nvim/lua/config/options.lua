vim.g.mapleader = " "

vim.opt.cursorline = true
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

vim.api.nvim_set_hl(0, "LspReferenceText", { fg = "#ffffff", bg = "none" })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { fg = "#ffffff", bg = "none" })
vim.api.nvim_set_hl(0, "LspReferenceRead", { fg = "#ffffff", bg = "none" })
vim.opt.scrolloff = 10
-- neovim completion decoration
