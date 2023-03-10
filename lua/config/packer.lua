-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
          require('rose-pine').setup({
              --- @usage 'auto'|'main'|'moon'|'dawn'
              variant = 'main',
              --- @usage 'main'|'moon'|'dawn'
              dark_variant = 'main',
              bold_vert_split = false,
              dim_nc_background = false,
              disable_background = false,
              disable_float_background = false,
              disable_italics = false,

              --- @usage string hex value or named color from rosepinetheme.com/palette
              groups = {
                  background = 'base',
                  panel = 'surface',
                  border = 'highlight_med',
                  comment = 'muted',
                  link = 'iris',
                  punctuation = 'subtle',

                  error = 'love',
                  hint = 'iris',
                  info = 'foam',
                  warn = 'gold',

                  headings = {
                      h1 = 'iris',
                      h2 = 'foam',
                      h3 = 'rose',
                      h4 = 'gold',
                      h5 = 'pine',
                      h6 = 'foam',
                  }
                  -- or set all headings at once
                  -- headings = 'subtle'
              },

              -- Change specific vim highlight groups
              -- https://github.com/rose-pine/neovim/wiki/Recipes
              highlight_groups = {
                  ColorColumn = { bg = 'rose' },

                  -- Blend colours against the "base" background
                  CursorLine = { bg = 'foam', blend = 10 },
                  StatusLine = { fg = 'love', bg = 'love', blend = 10 },
              }
          })
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use { "ellisonleao/gruvbox.nvim" }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  require('lualine').setup {
          requires = { 'kyazdani42/nvim-web-devicons', opt = true },
          options = {
                  icons_enabled = true,
                  theme = 'auto',
                  component_separators = { left = '', right = ''},
                  section_separators = { left = '', right = ''},
                  disabled_filetypes = {
                          statusline = {},
                          winbar = {},
                  },
                  ignore_focus = {},
                  always_divide_middle = true,
                  globalstatus = false,
                  refresh = {
                          statusline = 1000,
                          tabline = 1000,
                          winbar = 1000,
                  }
          },
          sections = {
                  lualine_a = {'mode'},
                  lualine_b = {'branch', 'diff', 'diagnostics'},
                  lualine_c = {'filename'},
                  lualine_x = {'encoding', 'fileformat', 'filetype'},
                  lualine_y = {'progress'},
                  lualine_z = {'location'}
          },
          inactive_sections = {
                  lualine_a = {},
                  lualine_b = {},
                  lualine_c = {'filename'},
                  lualine_x = {'location'},
                  lualine_y = {},
                  lualine_z = {}
          },
          tabline = {},
          winbar = {},
          inactive_winbar = {},
          extensions = {}
  }

  -- use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('ThePrimeagen/harpoon')

  use('mbbill/undotree')

  use 'kyazdani42/nvim-web-devicons'

  use('sheerun/vim-polyglot')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional

      use {
              "folke/trouble.nvim",
              requires = "nvim-tree/nvim-web-devicons",
              config = function()
                      require("trouble").setup {
                              -- your configuration comes here
                              -- or leave it empty to use the default settings
                              -- refer to the configuration section below
                      }
              end
      }
    }
  }
end)
