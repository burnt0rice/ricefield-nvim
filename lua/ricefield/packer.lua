-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Poimandres ColorSchema
  use { 
	  'olivercederborg/poimandres.nvim',
	  config = function()
		  require('poimandres').setup {
			  disable_background = true
		  }
		  vim.cmd('colorscheme poimandres')
	  end
  }

  -- Treesitter
  use {
	  'nvim-treesitter/nvim-treesitter',
    {run = ':TSUpdate'}
  }

  -- Undotree
  use {
	  'mbbill/undotree'
  }

  -- LSP Zero
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  -- {'williamboman/mason.nvim'},
		  -- {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  -- Autopairs
  use {
    'windwp/nvim-autopairs'
  }

  -- Blamer
  use {
    'APZelos/blamer.nvim'
  }

end)
