"setting
set fenc=utf-8
set encoding=utf-8
set autoread
set showcmd

set number
set cursorline
set virtualedit=onemore
set smartindent
set showmatch
set laststatus=2

set list listchars=tab:\>\-

set shiftwidth=4

set tabstop=4

"syntax and colorscheme
syntax on

set nocompatible
set backspace=indent,eol,start

set incsearch
set wrapscan

set termguicolors

"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

Plug 'cocopon/iceberg.vim'

"go plugin
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

"Rust plugin
Plug 'rust-lang/rust.vim'

"Dokcerfile
Plug 'ekalinin/Dockerfile.vim'

call plug#end()

"color scheme
set t_Co=256
colorscheme iceberg

"filetype settings
autocmd BufRead,BufNewFile *.py setfiletype python
autocmd BufRead,BufNewFile *.go setfiletype go
autocmd BufRead,BufNewFile *.yml setfiletype yaml
autocmd BufRead,BufNewFile *.yaml setfiletype yaml
autocmd BufRead,BufNewFile *.toml setfiletype toml
autocmd BufRead,BufNewFile *.rs setfiletype rust
autocmd BufRead,BufNewFile Dockerfile setfiletype Dockerfile
