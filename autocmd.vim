"autocmd FileType vim,dart,js,javascript,html,ts,jsx,tsx setlocal ts=2 sts=2 sw=2
" autocmd BufEnter *.vim,*.dart,*.js,*.javascript,*.html,*.ts,*.jsx,*.tsx,*.vue setlocal ts=2 sts=2 sw=2
autocmd BufEnter *.vim,*.dart,*.js,*.javascript,*.html,*.ts,*.jsx,*.tsx,*.vue setlocal ts=4 sts=4 sw=4

" autocmd FileType vue,ts,js,tsx setlocal ts=2 sts=2 sw=2
" autocmd FileType typescript setlocal ts=2 sts=2 sw=2
" autocmd FileType vue,ts,js setlocal ts=4 sts=4 sw=4


run current script with python3 by CTRL+R in command and insert mode
autocmd FileType python map <buffer> <C-r> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-r> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" autocmd BufWritePre <buffer> <cmd>EslintFixAll<CR>
" autocmd BufWritePost *.vue,*.js,*.ts EslintFixAll
		
