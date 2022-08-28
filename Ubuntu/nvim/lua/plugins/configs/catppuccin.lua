vim.g.catppuccin_flavour = "mocha"

local catppuccin = require 'catppuccin'
catppuccin.setup({
  dim_inactive = {
    enable = false,
    shade = "dark",
    percentage = 0.15,
  },

  transparent_background = true,

  integrations = {
    treesitter = true,

    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
    },

    barbar = true,
    lightspeed = true,
    dashboard = true,
    which_key = true,
  }
})

vim.cmd [[colorscheme catppuccin]]
