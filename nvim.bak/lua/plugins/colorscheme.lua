return {
  {
    -- gruvbox material
    {
      "sainnhe/gruvbox-material",
      lazy = false,
      priority = 1000,
      enabled = true,
      config = function()
        vim.g.gruvbox_material_enable_italic = true
        vim.cmd.colorscheme("gruvbox-material")
        vim.g.gruvbox_material_background = "hard"
        vim.g.gruvbox_material_enable_italic = false
        vim.g.gruvbox_material_disable_italic_comment = "1"
      end,
    },

    --oldworld
    {
      "dgox16/oldworld.nvim",
      lazy = false,
      priority = 1000,
    },

    --
  },

  -- lazyvim conf
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
