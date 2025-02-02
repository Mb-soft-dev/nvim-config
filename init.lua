-- Set leader key
vim.g.mapleader = " "

-- Enable line numbers
vim.opt.number = true

-- Enable relative line numbers
vim.opt.relativenumber = true

-- Set indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable clipboard
vim.opt.clipboard = "unnamedplus"
 
-- Install Packer (plugin manager)
vim.cmd([[packadd packer.nvim]])

require('packer').startup(function()
  -- Plugin manager itself
  use 'wbthomason/packer.nvim'

  -- Themes
  use 'folke/tokyonight.nvim'

  -- File explorer
  use 'nvim-tree/nvim-tree.lua'

  -- Status line
  use 'nvim-lualine/lualine.nvim'

  -- Syntax highlighting
  use 'nvim-treesitter/nvim-treesitter'

  -- Fuzzy finder
  use 'nvim-telescope/telescope.nvim'

  -- LSP and autocompletion plugins
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
end)
