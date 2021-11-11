syntax enable
set number
set relativenumber
set mouse=a
set clipboard+=unnamedplus
set noshowmode
set numberwidth=1
set showcmd
set encoding=utf-8
set showmatch
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set scrolloff=10
set signcolumn=yes
set colorcolumn=80
set updatetime=50
set nohlsearch
set nowrap
set noswapfile
set incsearch

" Ignore files
set wildignore+=*_build/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*

call plug#begin('~/.config/nvim/plugged')

    " Aesthetic 
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Functionality    
    Plug 'easymotion/vim-easymotion'
    Plug 'preservim/nerdtree'
    Plug 'christoomey/vim-tmux-navigator'

    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

call plug#end()

colorscheme gruvbox
let NERDTreeQuitOnOpen=1

let g:airline_theme='angr'
let g:airline#extensions#branch#enabled=1
let g:airline_section_y=''
let g:airline_skip_empty_sections=1
let g:airline_section_z='Ln %l:%c | %L %p%%'

" CoC config
let g:coc_global_extensions=['coc-snippets', 'coc-pairs', 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-json']

let mapleader = ' '

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

nmap <Leader>s <Plug>(easymotion-s2)
nnoremap <Leader>nt :NERDTreeFocus<CR>

" fzf
map <Leader>f :Files<CR>
map <Leader>ob :Buffers<CR>

" Faster scrolling
nnoremap <S-j> 10<C-e>
nnoremap <S-k> 10<C-y>

" CoC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)

