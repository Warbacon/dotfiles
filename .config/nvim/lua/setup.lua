-- AUTOPAIRS
require('nvim-autopairs').setup {
  enable_check_bracket_line = false,
  ignored_next_char = "[%w%.]"
}

-- LUALINE
require('lualine').setup()

-- TREESITTER
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  }
}