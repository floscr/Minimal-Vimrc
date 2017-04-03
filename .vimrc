" -----------------------------------------------------------------------------
" Minimal Server .vimrc
"
" Author: Florian Schroedl <hello@florianschroedl.com>
" Version: 1.0.0
"
" -----------------------------------------------------------------------------
" NeoVim Defaults
" -----------------------------------------------------------------------------

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Load local vimrc
if filereadable(expand('~/.vimrc_local'))
  source ~/.vimrc_local
endif

" Settings based on :help nvim-defaults
set autoindent
set autoread
set backspace=indent,eol,start
set complete-=i
set display=lastline
set encoding=utf-8
set formatoptions=tcqj
set history=10000
set hlsearch
set incsearch
set langnoremap
set laststatus=2
set listchars=tab:>\ ,trail:-,nbsp:+
set mouse=a
set nrformats=hex
set sessionoptions-=options
set smarttab
set tabpagemax=50
set tags=./tags;,tags
set ttyfast
set viminfo+=!
set wildmenu

" -----------------------------------------------------------------------------
" Custom Settings
" -----------------------------------------------------------------------------

set autochdir     " Set working dir to path of the current file
set copyindent    " Copy the previous indentation on autoindenting
set hidden        " Enables to switch between unsaved buffers and keep undo history
set ignorecase    " Ignore case when searching
set lazyredraw    " Don't redraw while executing macros (better performance)
set nojoinspaces  " No extra space when joining a line which ends with . ? !
set noshowmatch   " Show matching tags
set nostartofline " Prevent cursor from moving to beginning of line when switching buffers
set noswapfile    " Dont create swapfiles
set number        " Show Line numbers
set shortmess+=I  " Turn off the intro message
set showmode      " Always show mode
set smartcase     " Ignore case if search pattern is all lowercase, case-sensitive otherwise
set splitbelow    " Split new window below current window
set splitright    " Split new window right of current window

" Netrw
let g:netrw_banner=0 " Hide the banner

" -----------------------------------------------------------------------------
" Indentation
" -----------------------------------------------------------------------------

set autoindent " Automatic indentation
set copyindent " Copy previous indetation on autoindenting
set expandtab
set noshiftround
set shiftwidth=2
set softtabstop=2

" -----------------------------------------------------------------------------
" History
" -----------------------------------------------------------------------------

set history=1000
set undolevels=1000
