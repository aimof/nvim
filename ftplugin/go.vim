"go settings
set tabstop=4
set shiftwidth=4
set smartindent

let g:go_fmt_command = "goimports"
let g:go_gocode_autobuild = 1
nmap <Leader>c <Plug>(go-coverage-toggle)
nmap <Leader>t <Plug>(go-test)
nmap <Leader>d <Plug>(go-def)
nmap <Leader>p <Plug>(go-def-pop)
nmap <Leader>b <Plug>(go-build)
nmap <Leader>r <Plug>(go-run)
