"setting
""encoding
set fenc=utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

set virtualedit=all
set virtualedit+=onemore
set virtualedit+=block

set autoread
set showcmd

set number
set numberwidth=6
set relativenumber

set smartindent
set showmatch
set laststatus=2

set cursorline
set cursorcolumn

set list listchars=tab:\>\-

set shiftwidth=4

set tabstop=4

"leader
let mapleader = "\<space>"
nnoremap <Leader>w :w<CR>

"syntax and colorscheme
syntax on

set nocompatible
set backspace=indent,eol,start

set incsearch
set wrapscan

set termguicolors

"undo
if has('persistent_undo')
	set undodir=$HOME/.config/nvim/.undo
	set undofile
	set undolevels=100
endif

"vimdoc-ja
set helplang=ja,en

"verbose
" set verbosefile=/tmp/vim.log
" set verbose=0

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.cache/dein')
  call dein#begin('$HOME/.cache/dein')

  call dein#load_toml('$HOME/.config/nvim/dein.toml',      {'lazy': 0})
  call dein#load_toml('$HOME/.config/nvim/dein_lazy.toml', {'lazy': 1})

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" color scheme
set t_Co=256
colorscheme hybrid

"NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1


"filetype settings
autocmd BufRead,BufNewFile *.py setfiletype python
autocmd BufRead,BufNewFile *.go setfiletype go
autocmd BufRead,BufNewFile *.yml setfiletype yaml
autocmd BufRead,BufNewFile *.yaml setfiletype yaml
autocmd BufRead,BufNewFile *.toml setfiletype toml
autocmd BufRead,BufNewFile Dockerfile setfiletype Dockerfile
autocmd BufRead,BufNewFile Dockerfile* setfiletype Dockerfile
autocmd BufRead,BufNewFile *.rs setfiletype rust
autocmd BufRead,BufNewFile *.ion setfiletype ion
