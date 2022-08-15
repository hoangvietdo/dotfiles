-- Viet's LunarVim Config
-- general
lvim.log.level                       = "warn"
lvim.format_on_save                  = true
lvim.transparent_window              = false
lvim.builtin.lualine.style           = "default"
lvim.builtin.lualine.options.theme   = "ayu_mirage"
lvim.colorscheme                     = "sonokai"
vim.g.sonokai_style                  = 'andromeda'
vim.g.sonokai_better_performance     = 1
vim.g.sonokai_enable_italic          = 1
vim.g.sonokai_disable_italic_comment = 0
vim.g.sonokai_current_word           = 'grey background'
vim.g.sonokai_transparent_background = 1
vim.g.sonokai_cursor                 = 'auto'

vim.opt.backup         = false -- creates a backup file
vim.opt.clipboard      = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight      = 3 -- more space in the neovim command line for displaying messages
vim.opt.colorcolumn    = "99999" -- fixes indentline for now
vim.opt.completeopt    = { "menuone", "noselect" }
vim.opt.conceallevel   = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding   = "utf-8" -- the encoding written to a file
vim.opt.foldmethod     = "manual" -- folding set to "expr" for treesitter based folding
vim.opt.foldexpr       = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.guifont        = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.hidden         = true -- required to keep multiple buffers and open multiple buffers
vim.opt.hlsearch       = true -- highlight all matches on previous search pattern
vim.opt.ignorecase     = true -- ignore case in search patterns
vim.opt.mouse          = "a" -- allow the mouse to be used in neovim
vim.opt.pumheight      = 10 -- pop up menu height
vim.opt.showmode       = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline    = 2 -- always show tabs
vim.opt.smartcase      = true -- smart case
vim.opt.smartindent    = true -- make indenting smarter again
vim.opt.splitbelow     = true -- force all horizontal splits to go below current window
vim.opt.splitright     = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile       = false -- creates a swapfile
vim.opt.termguicolors  = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen     = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.title          = true -- set the title of window to the value of the titlestring
vim.opt.undodir        = vim.fn.stdpath "cache" .. "/undo"
vim.opt.undofile       = true -- enable persistent undo
vim.opt.updatetime     = 300 -- faster completion
vim.opt.writebackup    = false -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
vim.opt.expandtab      = true -- convert tabs to spaces
vim.opt.shiftwidth     = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop        = 2 -- insert 2 spaces for a tab
vim.opt.cursorline     = true -- highlight the current line
vim.opt.number         = true -- set numbered lines
vim.opt.relativenumber = false -- set relative numbered lines
vim.opt.numberwidth    = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn     = "yes" -- always show the sign column otherwise it would shift the text each time
vim.opt.wrap           = false -- display lines as one long line
vim.opt.spell          = false
vim.opt.spelllang      = "en"
vim.opt.scrolloff      = 8 -- is one of my fav
vim.opt.sidescrolloff  = 8
vim.opt.autoindent     = true

vim.cmd("autocmd InsertEnter * :set relativenumber")
vim.cmd("autocmd InsertLeave * :set norelativenumber")
vim.cmd("nnoremap <silent> <Enter> :nohlsearch<CR>")
vim.cmd("nnoremap <C-J> <C-W><C-J>")
vim.cmd("nnoremap <C-K> <C-W><C-K>")
vim.cmd("nnoremap <C-L> <C-W><C-L>")
vim.cmd("nnoremap <C-H> <C-W><C-H>")
-- vim.cmd("nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>")
-- vim.cmd("nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>")

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active                           = true
lvim.builtin.alpha.mode                             = "dashboard"
lvim.builtin.notify.active                          = true
lvim.builtin.terminal.active                        = true
lvim.builtin.nvimtree.setup.view.side               = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "cpp",
  "json",
  "lua",
  "python",
  "yaml",
  "bibtex"
}

lvim.builtin.treesitter.ignore_install    = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
-- -- make sure server will always be installed even if the server is in skipped_servers list
lvim.lsp.installer.setup.ensure_installed = {
  "sumeko_lua",
  "jsonls",
  "clangd",
  "jedi_language_server",
  "texlab",
  "yamlls",
  "vimls",
  "cmake",
  "lemminx",
}
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
lvim.lsp.installer.setup.ui.border = "rounded"
lvim.lsp.installer.setup.ui.keymaps = {
  uninstall_server = "d",
  toggle_server_expand = "o",
}
-- Additional Plugins
lvim.plugins = {
  {
    "ggandor/lightspeed.nvim",
    event = "BufRead",
  },
  {
    "folke/lsp-colors.nvim",
    event = "BufRead"
  },
  { "tpope/vim-surround" },
  { "matze/vim-move" },
  { "terryma/vim-multiple-cursors" },
  { "junegunn/vim-easy-align" },
  { "romgrk/barbar.nvim" },
  { "sainnhe/sonokai" },
  { "Yggdroot/indentLine" }
}
