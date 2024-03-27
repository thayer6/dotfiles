require('packer').startup(function(use)
  -- Core Plugins
  use 'wbthomason/packer.nvim'  -- Package manager
  use 'nvim-lua/plenary.nvim'  -- Utility library
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Fuzzy Finder and Dependencies
  use 'nvim-telescope/telescope.nvim' -- Fuzzy finder

  -- UI Enhancements
  use 'nvim-lualine/lualine.nvim'  -- Bottom status line customization
  use 'simrat39/symbols-outline.nvim'  -- Tree like outline of code symbols
  use 'mhinz/vim-signify' -- Highlighting changes not committed
  use 'lukas-reineke/indent-blankline.nvim'  -- Indentation guide
  use 'akinsho/bufferline.nvim'  -- Tab line for navigating buffers
  use {'nvim-neo-tree/neo-tree.nvim', requires = 'nvim-lua/plenary.nvim'}  -- File explorer

  -- LSP, Autocompletion, and Snippets
  use 'neovim/nvim-lspconfig' -- Language Server Protocol
  use 'williamboman/mason.nvim' -- Manages LSPs, DAPs, linters, formatters
  use 'williamboman/mason-lspconfig.nvim' -- Manages LSPs
  use 'hrsh7th/nvim-cmp'  -- Autocompletion
  use 'hrsh7th/cmp-buffer'  -- Autocompletion
  use 'hrsh7th/cmp-path'  -- Autocompletion
  use 'saadparwaiz1/cmp_luasnip'  -- 
  use 'hrsh7th/cmp-nvim-lsp' -- 

  -- Git Integrations and Utilities
  use 'tpope/vim-fugitive' -- Git integrations
  use 'lewis6991/gitsigns.nvim' -- Git information
  use 'sindrets/diffview.nvim' -- Side by side diff
  use 'kdheepak/lazygit.nvim' -- Integrate lazygit

  -- Theming
  use {'dracula/vim', as = 'dracula'}

  -- Miscellaneous Utilities
  use 'jose-elias-alvarez/null-ls.nvim' -- Linting and formatting
  use 'folke/trouble.nvim' -- Diagnostic list
  use 'folke/todo-comments.nvim' -- TODO comments highlight
  use 'folke/zen-mode.nvim' -- Distraction-free coding environment

  -- Language and File Type Specific
  use {'jalvesaq/Nvim-R', ft = 'r'} -- R LSP
  use {'glench/vim-jinja2-syntax', ft = 'jinja2'}  -- jinja2 syntax

  -- Other Plugins as per your original configuration, each evaluated for lazy-load vs. regular-load
  use 'stevearc/aerial.nvim' -- Code outline window for skimming & quick navigation
  use 'ThePrimeagen/harpoon'   -- Quick file access

end)
