local use = require('packer').use

-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Have packer use a popup window
require('packer').init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return require('packer').startup(
  function()
    use 'wbthomason/packer.nvim' -- Packer management

    use 'navarasu/onedark.nvim' -- One Dark theme

    use 'fladson/vim-kitty' -- Kitty config syntax highlighting

    use 'windwp/nvim-autopairs' -- Autopairs

    -- TREESITTER
    use {
      'nvim-treesitter/nvim-treesitter', -- Load plugin
      run = ':TSUpdate' -- Update parsers on start
    }

    use 'norcalli/nvim-colorizer.lua'

    -- GITSIGNS
    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    }

    -- LUALINE
    use {
      'nvim-lualine/lualine.nvim', -- Load plugin
      requires = { 'kyazdani42/nvim-web-devicons', opt = true } -- Nvim-web-icons
    }

    -- LSPCONFIG
    use {
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',
    }

    -- AUTOCOMPLETE
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lua'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use "rafamadriz/friendly-snippets"
    use 'onsails/lspkind.nvim'

    if PACKER_BOOTSTRAP then
      require('packer').sync()
    end

  end
)
