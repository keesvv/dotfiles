"Plugins
lua require('plugins')

"Options & settings
set hlsearch		"Higlight search
set smarttab		"Smart tab
set shiftwidth=4	"Shift width
set tabstop=4		"Tab width
set ai				"Auto indent
set number			"Line numbers
set relativenumber	"Relative line numbers
set nowrap			"No line wrapping

"GUI settings
set guifont=JetBrains\ Mono:h10
let g:neovide_cursor_animation_length=0

if exists('g:neovide') || $TERM == "alacritty"
	colorscheme everblush	"Set color scheme
	set title				"Adjust window title
endif

"Custom color schemes
hi StatusLine guifg=darkgrey gui=none
hi EndOfBuffer ctermfg=darkgrey guifg=grey
hi LineNr ctermfg=grey guifg=grey

"Keybinds
nnoremap <c-v> "+p
nnoremap <leader>f <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>h <cmd>Telescope command_history<cr>
nnoremap <leader>p <cmd>Telescope project<cr>
nnoremap <leader>c <cmd>Telescope<cr>

"Disable arrow keys in normal mode
nmap <left> <nop>
nmap <right> <nop>
nmap <up> <nop>
nmap <down> <nop>
