return require('packer').startup(function(use)
	-- packer
	use 'wbthomason/packer.nvim'

	-- lsp
	use 'neovim/nvim-lspconfig'
	use {
		'hrsh7th/nvim-cmp',
		requires = {'hrsh7th/cmp-nvim-lsp'}
	}

	-- navigation
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		requires = {'nvim-lua/plenary.nvim'}
	}

	-- themes
	use 'mangeshrex/everblush.vim'
end)
