local set = vim.opt

-- NVIM BASIC CONFIGURATION -----------------
set.swapfile = false
set.updatetime = 250
set.smartindent = true
set.clipboard = "unnamedplus"
set.smarttab = true
set.autoindent = true
set.autochdir = true
vim.cmd("set nocompatible")

-- EDITOR ------------------------------------
set.expandtab = true
set.mouse = "a"
set.tabstop = 4
set.shiftwidth = 4
set.number = true
set.relativenumber = true
set.ignorecase = true
set.smartcase = true
set.termguicolors = true
set.cursorline = true
set.cmdheight = 1
vim.cmd("set noshowmode")
vim.cmd("set signcolumn=yes")

-- THEME --------------------------------------
require('onedark').load()

--  OTHER -------------------------------------
-- Have packer use a popup window
require('packer').init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}
