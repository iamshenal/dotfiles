return {
  {
    {
      "sainnhe/gruvbox-material",
      lazy = false,
      priority = 1000,
      config = function()
        vim.g.gruvbox_material_enable_italic = true
        vim.cmd.colorscheme("gruvbox-material")
        vim.g.gruvbox_material_background = "hard"
        vim.g.gruvbox_material_enable_italic = false
        vim.g.gruvbox_material_italic_comments = "0"
      end,
      -- nigga
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
