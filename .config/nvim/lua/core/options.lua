local set = vim.opt

-- NVIM BASIC CONFIGURATION -----------------
set.swapfile = false
set.updatetime = 250
set.clipboard = "unnamedplus"
set.smarttab = true
vim.cmd("set nocompatible")

-- EDITOR ------------------------------------
set.mouse = "a"
set.expandtab = true
set.shiftwidth = 4
set.smartindent = true
set.number = true
set.numberwidth = 2
set.ignorecase = true
set.smartcase = true
set.termguicolors = true
set.cursorline = true
set.cmdheight = 1
set.signcolumn = "yes"
vim.cmd("set noshowmode")

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
