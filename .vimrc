"Call the plugin manager
call plug#begin('~/.vim/plugged')

"Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"Options & settings
let g:airline_powerline_fonts = 1

set shortmess=I  "Disable splash screen
set ignorecase   "Ignore case in search
set hlsearch     "Higlight search
set expandtab    "Tabs => spaces
set smarttab     "Smart tab
set shiftwidth=4 "Shift width
set tabstop=4    "Tab width
set ai           "Auto indent
set number       "Line numbers

"Syntax highlighting
filetype plugin on
syntax on

"Custom color schemes
highlight LineNr ctermfg=grey

"Mappings
map <space> /
map <silent><S-Up> :m-2<CR>
map <silent><S-Down> :m+<CR>

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"Fix slow ESC
set ttimeout
set ttimeoutlen=0
set timeoutlen=1000

