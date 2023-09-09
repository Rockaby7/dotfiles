-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Load general options
require 'core.options'

-- Load general keymaps
require 'core.keymaps'

-- Install package manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Setup plugins
require('lazy').setup({
  require 'plugins.no-config-plugins',
  require 'plugins.lsp.nvim-lspconfig',
  require 'plugins.lsp.null-ls',
  require 'plugins.nvim-cmp',
  require 'plugins.gitsigns',
  -- require 'plugins.theme.solarized',
  require 'plugins.which-key',
  require 'plugins.theme.onedark',
  require 'plugins.lualine',
  require 'plugins.indent-blankline',
  require 'plugins.comment',
  require 'plugins.telescope',
  require 'plugins.nvim-treesitter',
  -- require 'plugins.debug',
  require 'plugins.nvim-tree',
  -- require 'plugins.neo-tree',
  require 'plugins.nvim-autopairs',
  require 'plugins.hop',
  require 'plugins.bufferline',
}, {})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
