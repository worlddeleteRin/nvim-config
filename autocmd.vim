" set ts=2
" set sts=2
" set sw=2

" autocmd FileType vue,ts,js setlocal ts=2 sts=2 sw=2
" autocmd FileType dart,js,javascript,html,ts,jsx,tsx setlocal ts=2 sts=2 sw=2
" autocmd FileType vue,ts,js,javascript,typescript,json setlocal ts=4 sts=4 sw=4

" run current script with python3 by CTRL+R in command and insert mode
" autocmd FileType python map <buffer> <C-r> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" autocmd FileType python imap <buffer> <C-r> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" autocmd BufWritePre <buffer> <cmd>EslintFixAll<CR>
" autocmd BufWritePost *.vue,*.js,*.ts EslintFixAll
"
" autocmd BufReadPost *.docx :%!pandoc -f docx -t markdown
" autocmd BufReadPost *.docx :%!pandoc -f docx -t markdown
" autocmd BufWritePost *.docx :!pandoc -f markdown -t docx
" autocmd BufWritePost *.docx :!pandoc -f markdown -t docx
" autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
