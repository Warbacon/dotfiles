local use = require('packer').use

-- PLUGINS -----------------------------------------------
return require('packer').startup(
  function()
    use 'wbthomason/packer.nvim'       -- Packer management
    use 'navarasu/onedark.nvim'        -- One Dark theme
    use 'fladson/vim-kitty'            -- Kitty config syntax highlighting
    use 'windwp/nvim-autopairs'        -- Autopairs
    use 'norcalli/nvim-colorizer.lua'  -- Colorizer
    use 'lewis6991/impatient.nvim'     -- Improve start speed

    -- TREESITTER ------------------------
    use {
      'nvim-treesitter/nvim-treesitter',  -- Load plugin
      run = ':TSUpdate'                   -- Update parsers on start
    }

    -- GITSIGNS --------------------------
    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    }

    -- LUALINE ----------------------------
    use {
      'nvim-lualine/lualine.nvim',                               -- Load plugin
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }  -- Nvim-web-icons
    }

    -- LSPCONFIG ---------------------------
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
  end
)
