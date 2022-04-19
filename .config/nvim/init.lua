-- EXTERNAL FILES
require('plugins') -- Loads the plugins
require('setup') -- Configures plugins

-- NVIM BASIC CONFIGURATION
vim.cmd('set noshowmode') -- Hides the mode message
vim.cmd('set cursorline') -- Highlights the current line
vim.cmd('set termguicolors') -- Enables truecolor
vim.cmd('set signcolumn=yes') -- Always shows the sign column
vim.cmd('set updatetime=300') -- Update gitsigns faster
vim.cmd('set noswapfile') -- No swapfile
vim.cmd("set mouse=a")
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set number relativenumber")
vim.cmd("set tabstop=4 shiftwidth=4 expandtab")

require('onedark').load()
