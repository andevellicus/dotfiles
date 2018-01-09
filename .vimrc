" Show line numbers
set number
" Set encoding
set encoding=utf-8
" Enable syntax
syntax enable
let python_highlight_all=1

set incsearch
set splitright
set splitbelow

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Themes
set background=dark
colorscheme solarized
let g:solarized_termcolors = 256
let g:solarized_termtrans  = 1
hi SignColumn ctermbg=NONE
hi LineNr term=bold ctermfg=DarkGreen ctermbg=NONE 
hi Normal guifg=White ctermfg=White
hi Statement ctermfg=DarkYellow

" Python indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set smartindent |
    \ set fileformat=unix

" Full stack indendtation
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


" Plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugins')
Plug 'Valloric/YouCompleteMe'
Plug 'tmhedberg/SimpylFold'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()

let g:ycm_server_python_interpreter = '/usr/bin/python'

