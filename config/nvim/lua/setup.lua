-- IMPATIENT.NVIM -----------------------------------
require('impatient')

-- ONE DARK THEME --------------------------------
require('onedark').setup()

-- AUTOPAIRS --------------------------------------
require('nvim-autopairs').setup {
  enable_check_bracket_line = false,
  ignored_next_char = "[%w%.]"
}

-- COLORIZER --------------------------------------
require 'colorizer'.setup(
  { '*'; },
  { names = false; }) -- Disable for codes like Blue

-- LUALINE ----------------------------------------
require('lualine').setup{
options = {
    globalstatus = true,
  }
}

-- TREESITTER -------------------------------------
require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- LSP INSTALLER ----------------------------------
local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
  local opts = {}

  -- Lua server config ----------------
  if server.name == "sumneko_lua" then
    local sumneko_opts = {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    }
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  server:setup(opts)
end)

-- AUTOCOMPLETE -----------------------------------
require("luasnip.loaders.from_vscode").lazy_load()

local luasnip = require('luasnip')
local cmp = require 'cmp'

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item()
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
    { name = 'nvim_lua' }
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  experimental = {
    ghost_text = false,
    native_menu = false,
  },
}
-- Icons -------------------------
local lspkind = require('lspkind')
cmp.setup {
  formatting = {
    format = lspkind.cmp_format(),
  },
}
