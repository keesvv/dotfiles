"Begin plugins
call plug#begin(stdpath('data') . '/plugged')

"Vim plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'vim-airline/vim-airline'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"COC plugins
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'josa42/coc-go', {'do': 'yarn install --frozen-lockfile'}
Plug 'pappasam/coc-jedi', {'do': 'yarn install --frozen-lockfile && yarn build'}
Plug 'fannheyward/coc-rust-analyzer', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-vetur', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}

"End plugins
call plug#end()

"Options & settings
let g:airline_powerline_fonts = 1
let g:gruvbox_italic = 1
let g:user_emmet_leader_key='<C-E>'
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:ale_fix_on_save = 1
let g:tex_flavor = 'latex'
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
set number         "Line numbers
set noshowmode     "No default statusline
set nowrap         "No line wrapping
set bg=dark        "Dark theme
set updatetime=250
set mouse=a

"Syntax highlighting
filetype plugin on
syntax on

"Custom color schemes
colorscheme gruvbox
highlight LineNr ctermfg=grey
highlight Normal ctermbg=NONE

"Mappings
map <silent><S-Up> :m-2<CR>
map <silent><S-Down> :m+<CR>
map <silent><C-B> :NERDTreeToggle<CR>

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nnoremap <C-p> :GFiles<CR>
nnoremap <C-f> :Telescope grep_string<CR>

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>gs :G<CR>
nmap <leader>gc :G commit<CR>

"Window management
nmap <leader>q <C-W>q
nmap <leader>h <C-W>h
nmap <leader>j <C-W>j
nmap <leader>k <C-W>k
nmap <leader>l <C-W>l

"Compile command
nmap <F5> :Dispatch!<CR>

"No arrow keys, learning Vim the hard way ;)
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>
