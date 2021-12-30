"Begin plugins
call plug#begin(stdpath('data') . '/plugged')

"Vim plugins
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'
Plug 'editorconfig/editorconfig-vim'

"End plugins
call plug#end()

"LSP & autocomplete config
lua << EOF
local lsp = require('lspconfig')
local cmp = require('cmp')

-- Language servers
lsp.gopls.setup{}			-- Go
lsp.ccls.setup{}			-- C/C++/Obj-C
lsp.rust_analyzer.setup{}	-- Rust

-- Completion
cmp.setup({
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'buffer' }
	}),
	mapping = {
		-- Completion list
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
		-- Cycle through list
		['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
		-- Reverse cycle through list
		['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
		-- Close list
		['<C-e>'] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close()
		}),
		-- Confirm
		['<CR>'] = cmp.mapping.confirm({ select = true })
	}
})
EOF

"Options & settings
set shortmess=I    "Disable splash screen
set ignorecase     "Ignore case in search
set hlsearch       "Higlight search
set smarttab       "Smart tab
set shiftwidth=4   "Shift width
set tabstop=4      "Tab width
set ai             "Auto indent
set number         "Line numbers
set nowrap         "No line wrapping
set noshowmode     "No default statusline

"Syntax highlighting
filetype plugin on
syntax on

"Custom color schemes
highlight LineNr ctermfg=grey
highlight Normal ctermbg=NONE
highlight Pmenu ctermbg=darkgray ctermfg=white

"Mappings
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
