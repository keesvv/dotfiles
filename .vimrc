"Options & settings
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

"Fix slow ESC
set ttimeout
set ttimeoutlen=0
set timeoutlen=1000

