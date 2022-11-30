syntax on
set relativenumber

set nocompatible              " required
filetype on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'preservim/nerdtree'
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/fugitive.vim'
Plugin 'vim-scripts/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'davidhalter/jedi-vim'
Plugin 'deoplete-plugins/deoplete-jedi'
Plugin 'itchyny/lightline.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'jayli/vim-easycomplete'
Plugin 'SirVer/ultisnips'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
"set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za


colorscheme gruvbox

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,nbsp:&,space:.
         
" Shortcut 
nmap sv :vsplit<Return><C-w>w
nmap ss :split<Return><C-w>w
nmap co :w<CR>:!python -m py_compile % <CR>
nmap te :Telescope<CR>

map s<left> <C-w>h
map s<right> <C-w>l
map <C-j> <C-]>
let g:easycomplete_tab_trigger="<c-space>"
