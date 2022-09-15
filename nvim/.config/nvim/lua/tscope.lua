local telescope = require('telescope')

telescope.setup {
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			".git"
		}
	},
	extensions = {
		project = {
			base_dirs = { '~/Source' },
			hidden_files = true
		}
	}
}

telescope.load_extension('project')
