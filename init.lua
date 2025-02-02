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

-- Install Lazy.nvim (plugin manager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Themes
  "folke/tokyonight.nvim",

  -- File explorer
  "nvim-tree/nvim-tree.lua",

  -- Status line
  "nvim-lualine/lualine.nvim",

  -- Syntax highlighting
  "nvim-treesitter/nvim-treesitter",

  -- Fuzzy finder
  "nvim-telescope/telescope.nvim",
})

