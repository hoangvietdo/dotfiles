require('nvim_comment').setup({
  create_mappings = false
})

local wk = require("which-key")
wk.register({
  ["<leader>a"] = {"<cmd>CommentToggle<cr>", "Comment Toggle Line" },
})

wk.register({
  ["<leader>a"] = {"<esc><cmd>'<,'>CommentToggle<cr>'<", "Comment Toggle Block"},
}, { mode = "v" })
