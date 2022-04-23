-- EXTERNAL FILES
require('plugins') -- Loads the plugins
vim.cmd('set termguicolors') -- Enables truecolor
require('setup') -- Configures plugins

-- NVIM BASIC CONFIGURATION
vim.cmd [[
    set noshowmode
    set cursorline
    set signcolumn=yes
    set updatetime=300
    set noswapfile 
    set mouse=a
    set clipboard+=unnamedplus
    set number relativenumber
    set tabstop=4 shiftwidth=4 expandtab
    ]]

require('onedark').load()
