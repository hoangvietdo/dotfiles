require("mason").setup({
  ui = {
    border = 'single',
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

local wk = require("which-key")
wk.register({
  ["<leader>"] = {
    m = {
      name = "Mason",
      o = { "<cmd>Mason<cr>", "Open" },
    },
  },
})
