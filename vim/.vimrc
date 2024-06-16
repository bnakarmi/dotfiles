set exrc
set mouse=a

set number
set relativenumber

set ignorecase
set smartcase

set incsearch
set nohlsearch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

set nowrap
set scrolloff=8

set termguicolors
set background=dark
set colorcolumn=80
set signcolumn="yes:1"
set cursorline

set updatetime=50

set splitright
set splitbelow

set statusline=%f\ %M\ %Y\ %R\ %=\ %l:\%c\ %p%%

" Wide cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" Netrw
let g:netrw_banner = 0
" Leader key
let mapleader = " "

autocmd vimenter * ++nested colorscheme gruvbox

filetype on
filetype plugin on
filetype indent on
syntax on

inoremap kj <Esc>
nnoremap <leader>cb <cmd>BufOnly<CR>
vnoremap > >gv
vnoremap < <gv
vnoremap <leader>y "+y
map <leader>p "+P
