" Show line numbers
set number
syntax enable

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

let g:solarized_termcolors = 256
let g:solarized_termtrans  = 1
set background=dark
colorscheme solarized
"colorscheme default
hi LineNr term=bold ctermfg=DarkGreen ctermbg=NONE 
hi Normal guifg=White ctermfg=White
" hi Comment ctermfg=DarkGrey cterm=italic 
hi Statement ctermfg=DarkYellow
set encoding=utf-8


au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

