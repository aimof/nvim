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

"NERDTree
Plug 'scrooloose/nerdtree'

"vim-fugitive
Plug 'tpope/vim-fugitive'

"Dokcerfile
Plug 'ekalinin/Dockerfile.vim'

" languageClient
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }

" (Completion plugin option 1)
Plug 'roxma/nvim-completion-manager'

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

call plug#end()

" nvim-completion-manager
let $NVIM_PYTHON_LOG_FILE="/tmp/nvim_log"
let $NVIM_NCM_LOG_LEVEL="DEBUG"
let $NVIM_NCM_MULTI_THREAD=0
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

"language Server
"https://fortes.com/2017/language-server-neovim/
"set hidden

"let g:LanguageClient_serverCommands = {
"    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
"    \ }

"nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
"nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
"nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

"color scheme
set t_Co=256
colorscheme iceberg

"NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>


"filetype settings
autocmd BufRead,BufNewFile *.py setfiletype python
autocmd BufRead,BufNewFile *.go setfiletype go
autocmd BufRead,BufNewFile *.yml setfiletype yaml
autocmd BufRead,BufNewFile *.yaml setfiletype yaml
autocmd BufRead,BufNewFile *.toml setfiletype toml
autocmd BufRead,BufNewFile Dockerfile setfiletype Dockerfile
autocmd BufRead,BufNewFile Dockerfile* setfiletype Dockerfile
autocmd BufRead,BufNewFile *.rs setfiletype rust
