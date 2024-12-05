-- hiding the no information message in notify
return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = {
          skip = true,
        },
      })
    end,
  },

  -- lualine installation
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      -- some options will be here
    },
  },
}
