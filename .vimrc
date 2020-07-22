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
Plug 'leafOfTree/vim-vue-plugin'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'

"COC plugins
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-vetur', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}

"End plugins
call plug#end()

"Options & settings
let g:airline_powerline_fonts = 1
let g:gruvbox_italic = 1
let g:user_emmet_leader_key='<C-E>'
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:ale_fix_on_save = 1
let b:ale_linter_aliases = ['javascript', 'vue', 'typescript']
let b:ale_linters = ['eslint']
let mapleader = " "

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
set nowrap         "No line wrapping
set bg=dark        "Dark theme
set updatetime=250

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
map <silent><C-B> :NERDTreeToggle<CR>

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nnoremap <C-p> :GFiles<CR>

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>gs :G<CR>

"Change cursor shape based on current mode
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

"Fix slow ESC
set ttimeout
set ttimeoutlen=0
set timeoutlen=1000

