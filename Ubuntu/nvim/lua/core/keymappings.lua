local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

vim.cmd("nnoremap <C-J> <C-W><C-J>")
vim.cmd("nnoremap <C-K> <C-W><C-K>")
vim.cmd("nnoremap <C-L> <C-W><C-L>")
vim.cmd("nnoremap <C-H> <C-W><C-H>")

-- Move cursor in insert mode
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-l>", "<Right>", opts)

-- Buffer navigation
keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Turn on / off Lsp Diag
keymap("n", "'", ":ToggleDiagOff<CR>", opts)
keymap("n", "<leader>'", ":ToggleDiagOn<CR>", opts)

-- No highlight search
keymap("n", "<leader>h", ":nohlsearch<CR>", opts)

-- Easy Align =
keymap("v", "<leader>i", "<esc>:'<,'>EasyAlign=<CR>", opts)

-- IncRename
-- vim.keymap.set("n", "<leader>r", ":IncRename ")
vim.keymap.set("n", "<leader>r", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })

-- Twilight
keymap("n", "<leader>tw", ":Twilight<CR>", opts)

-- Copy all the file
keymap("n", "<leader>s", "ggVGy", opts)

-- Save files
keymap("n", "<leader>w", ":w<CR>", opts)

-- Align all file and comeback previous cursor position
keymap("n", "<leader>i", "gg=G<C-o>", opts)
