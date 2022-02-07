return require('packer').startup(
  function()
    use 'wbthomason/packer.nvim' -- Packer management

    use {'dracula/vim', as = 'dracula'} -- Dracula theme

    use 'fladson/vim-kitty' -- Kitty config syntax highlighting

    use 'windwp/nvim-autopairs' -- Autopairs

    -- TREESITTER
    use {
        'nvim-treesitter/nvim-treesitter', -- Load plugin
        run = ':TSUpdate' -- Update parsers on start
    }
    
    -- GITSIGNS
    use {
      'lewis6991/gitsigns.nvim', -- Load plugin
      requires = {
        'nvim-lua/plenary.nvim' -- Plenary (dependency)
      },
      config = function()          
        require('gitsigns').setup() -- Setups the plugin
      end
    }

    -- LUALINE
    use {
        'nvim-lualine/lualine.nvim', -- Load plugin
        requires = { 'kyazdani42/nvim-web-devicons', opt = true } -- Nvim-web-icons
    }
  end
)
