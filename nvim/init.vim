syntax on
filetype on

set cursorline
set number
set relativenumber
set mouse=a
set clipboard+=unnamedplus
set noshowmode
set numberwidth=1
set showcmd
set showmatch
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set scrolloff=20
set signcolumn=yes
set colorcolumn=80
set updatetime=50
set hls
set nowrap
set noswapfile
set incsearch
set encoding=UTF-8
set splitbelow
set splitright

call plug#begin()

Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/ap/vim-css-color'

Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/easymotion/vim-easymotion'

Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/airblade/vim-gitgutter'

call plug#end()

let NERDTreeQuitOnOpen=1

colorscheme onedark

let g:airline_theme='angr'
let g:airline#extensions#branch#enabled=1
let g:airline_section_y=''
let g:airline_skip_empty_sections=1
let g:airline_section_z='Ln %l:%c | %L %p%%'

if has('persistent_undo')
  set undofile
  set undodir=$HOME/.config/nvim/undo
  endif

let mapleader = ' '

nnoremap <Leader>nt :NERDTreeFocus<CR>

nnoremap <Leader>td :TerminalSplit zsh<CR>
nnoremap <Leader>tr :TerminalVSplit zsh<CR>

nmap <Leader>tb :TagbarToggle<CR>

nmap <Leader>s <Plug>(easymotion-s2)

nmap Q <Nop> " Enters Ex node

" Preventing bad habits
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

