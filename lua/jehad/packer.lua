-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as string
  use 'rstacruz/vim-closer'

  -- fuzzy finding w/ telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- colorscheme
  use('bluz71/vim-nightfly-colors', { as = 'nightfly' })

  -- statusline
  use("nvim-lualine/lualine.nvim")

  -- treesitter configure
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')

  -- quick navigation
  use('theprimeagen/harpoon')

  use('nvim-lua/plenary.nvim')

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

  -- lsp configure
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lua' },
      -- Snippets
      { 'rafamadriz/friendly-snippets' },
    }
  }

  use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

  use("szw/vim-maximizer")              -- maximizes and restores current window

  -- commenting with gc
  use("numToStr/Comment.nvim")

  -- games
  use('ThePrimeagen/vim-be-good')

end)
