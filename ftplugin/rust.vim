let g:rustfmt_autosave = 1
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

let g:LanguageClient_autoStart = 1

setlocal completefunc=LanguageClient#complete

" <leader>ld to go to definition
"nnoremap <buffer>
"  \ <leader>ld :call LanguageClient_textDocument_definition()<cr>
" <leader>lh for type info under cursor
"nnoremap <buffer>
"  \ <leader>lh :call LanguageClient_textDocument_hover()<cr>
" <leader>lr to rename variable under cursor
"nnoremap <buffer>
"  \ <leader>lr :call LanguageClient_textDocument_rename()<cr>

