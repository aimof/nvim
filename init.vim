"leader

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

"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

Plug 'cocopon/iceberg.vim'

"go plugin
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

"Rust plugin
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

"haskell
Plug 'eagletmt/neco-ghc'
Plug 'dag/vim2hs'
Plug 'pbrisbin/vim-syntax-shakespeare'

"elixir plugin
Plug 'elixir-lang/vim-elixir'
Plug 'carlosgaldino/elixir-snippets'

"NERDTree
Plug 'scrooloose/nerdtree'

"vim-fugitive
Plug 'tpope/vim-fugitive'

"Dokcerfile
Plug 'ekalinin/Dockerfile.vim'

"ion
Plug 'vmchale/ion-vim'

"conque-GDB
Plug 'vim-scripts/Conque-GDB'

"grep.vim
Plug 'vim-scripts/grep.vim'

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

"color scheme
set t_Co=256
colorscheme iceberg

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
