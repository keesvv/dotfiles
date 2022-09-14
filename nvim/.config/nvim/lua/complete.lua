local cmp = require('cmp')

cmp.setup({
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'buffer' },
	}),
	mapping = cmp.mapping.preset.insert({
		['<C-Space>'] = cmp.mapping.complete()
	})
})
