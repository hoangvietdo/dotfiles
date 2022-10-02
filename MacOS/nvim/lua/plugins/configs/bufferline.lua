local bufferline = require("bufferline")

bufferline.setup({
  options = {
    close_command = function(bufnum)
      require('bufdelete').bufdelete(bufnum, true)
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "",
        padding = 1,
      }
    },
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = true,
    show_close_icon = true,
    themable = true,
    buffer_close_icon = "",
    modified_icon = "",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 20,
    show_tab_indicators = true,
    enforce_regular_tabs = false,
    view = "multiwindow",
    show_buffer_close_icons = true,
    separator_style = "thin",
    -- mappings = true,
    always_show_bufferline = true
  }
})

local wk = require("which-key")
wk.register({
  ["<leader>"] = {
    b = {
      name = "Buffer",
      q = {"<cmd>Bdelete<cr>", "Close"},
      n = {"<cmd>BufferLineMoveNext<cr>", "Move Buffer to Next"},
      p = {"<cmd>BufferLineMovePrev<cr>", "Move Buffer to Previous"},
      r = {"<cmd>BufferLineCloseRight<cr>", "Close Buffers to the Right"},
      l = {"<cmd>BufferLineCloseLeft<cr>", "Close Buffers to the Left"},
      o = {"<cmd>exe 'BufferLineCloseLeft' | exe 'BufferLineCloseRight'<cr>", "Close Other Buffers"},
      c = {"<cmd>enew<cr>", "Create New Buffer"},
    },
  }
})
