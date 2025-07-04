return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      theme = "gruvbox-material",
      disabled_filetypes = {
        "neo-tree",
        "alpha",
        "snacks_dashboard",
        "TelescopePrompt",
      },
      -- section_separators = { left = '', right = '' },
      -- component_separators = { left = '', right = '' },
      section_separators = {},
      component_separators = {},
      always_divide_middle = true,
      globalstatus = true,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = { "filename" },
      lualine_x = { "diagnostics", "diff", "filetype" },
      lualine_y = { "location" },
      lualine_z = { "progress" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    extensions = {},
  },
}
