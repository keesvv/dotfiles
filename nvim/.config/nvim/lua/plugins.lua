require('packer').startup(function(use)
	-- packer
	use 'wbthomason/packer.nvim'

	-- lsp
	use {
		'neovim/nvim-lspconfig',
		config = function() require('lsp') end
	}
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer'
		},
		config = function() require('complete') end
	}

	-- navigation
	use {
		'kylechui/nvim-surround',
		tag = '*',
		config = function() require('surround') end
	}
	use {
		'nvim-telescope/telescope.nvim',
		tag = '*',
		requires = {
			'nvim-lua/plenary.nvim',
			'nvim-telescope/telescope-project.nvim'
		},
		config = function() require('tscope') end
	}

	-- themes
	use 'mangeshrex/everblush.vim'
end)
