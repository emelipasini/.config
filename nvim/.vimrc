syntax on
filetype on

set nocompatible
set shortmess+=I
set number
set relativenumber
set laststatus=2
set backspace=indent,eol,start
set hidden
set splitbelow
set splitright
set ignorecase
set smartcase
set incsearch
set clipboard+=unnamedplus
set noshowmode
set numberwidth=2
set showcmd
set encoding=utf-8
set showmatch
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set scrolloff=10
set colorcolumn=80
set updatetime=50
set hls
set nowrap
set noswapfile
set noerrorbells visualbell t_vb=
set mouse+=a

" Unbind useless default key bindings
nmap Q <Nop> " 'Q'

colorscheme elflord

let &t_SI="\e[6 q"
let &t_EI="\e[2 q"

if has('persistent_undo')
  set undofile
  set undodir=$HOME/.vim/undo
  endif

" Try to prevent bad habits
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

inoremap <Left> <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up> <ESC>:echoe "Use k"<CR>
inoremap <Down> <ESC>:echoe "Use j"<CR>

