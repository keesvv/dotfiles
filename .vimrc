"Begin plugins
call plug#begin('~/.vim/plugged')

"Vim plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf.vim'

"COC plugins
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}

"End plugins
call plug#end()

"Options & settings
let g:airline_powerline_fonts = 1
let g:gruvbox_italic = 1

set shortmess=I    "Disable splash screen
set ignorecase     "Ignore case in search
set hlsearch       "Higlight search
set expandtab      "Tabs => spaces
set smarttab       "Smart tab
set shiftwidth=4   "Shift width
set tabstop=4      "Tab width
set ai             "Auto indent
set relativenumber "Relative line numbers
set noshowmode     "No default statusline
set bg=dark        "Dark theme

"Syntax highlighting
filetype plugin on
syntax on

"Custom color schemes
highlight LineNr ctermfg=grey
colorscheme gruvbox

"Mappings
map <space> /
map <silent><S-Up> :m-2<CR>
map <silent><S-Down> :m+<CR>
map <silent><C-B> :NERDTree<CR>

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nnoremap <C-p> :GFiles<CR>

"Fix slow ESC
set ttimeout
set ttimeoutlen=0
set timeoutlen=1000

