-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/vietdo/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/vietdo/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/vietdo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/vietdo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/vietdo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    config = { "load_plugin_config'luasnip'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "load_plugin_config('alpha')" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["auto-save.nvim"] = {
    config = { "load_plugin_config'auto-save'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/auto-save.nvim",
    url = "https://github.com/Pocco81/auto-save.nvim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["bufdelete.nvim"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "load_plugin_config('bufferline')" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    config = { "load_plugin_config'catppuccin'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["feline.nvim"] = {
    config = { "load_plugin_config'feline'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "load_plugin_config'gitsigns'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "load_plugin_config'indent-blankline'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "load_plugin_config'mason-lspconfig'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "load_plugin_config'mason'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "load_plugin_config'nvim-autopairs'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "load_plugin_config'nvim-cmp'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    config = { "load_plugin_config'nvim-comment'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lastplace"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "https://github.com/ethanholz/nvim-lastplace"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "load_plugin_config'nvim-tree'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "load_plugin_config'nvim-treesitter'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "load_plugin_config'telescope'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggle-lsp-diagnostics.nvim"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/toggle-lsp-diagnostics.nvim",
    url = "https://github.com/WhoIsSethDaniel/toggle-lsp-diagnostics.nvim"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-move"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/vim-move",
    url = "https://github.com/matze/vim-move"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["which-key.nvim"] = {
    config = { "load_plugin_config'which-key'" },
    loaded = true,
    path = "/home/vietdo/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
load_plugin_config'mason'
time([[Config for mason.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
load_plugin_config'nvim-treesitter'
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
load_plugin_config'nvim-cmp'
time([[Config for nvim-cmp]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
load_plugin_config'which-key'
time([[Config for which-key.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
load_plugin_config'indent-blankline'
time([[Config for indent-blankline.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
load_plugin_config('alpha')
time([[Config for alpha-nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
load_plugin_config'catppuccin'
time([[Config for catppuccin]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
load_plugin_config'nvim-autopairs'
time([[Config for nvim-autopairs]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
load_plugin_config'telescope'
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
load_plugin_config'nvim-tree'
time([[Config for nvim-tree.lua]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
load_plugin_config'mason-lspconfig'
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: auto-save.nvim
time([[Config for auto-save.nvim]], true)
load_plugin_config'auto-save'
time([[Config for auto-save.nvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
load_plugin_config'nvim-comment'
time([[Config for nvim-comment]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
load_plugin_config'gitsigns'
time([[Config for gitsigns.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
load_plugin_config('bufferline')
time([[Config for bufferline.nvim]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
load_plugin_config'feline'
time([[Config for feline.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
load_plugin_config'luasnip'
time([[Config for LuaSnip]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end