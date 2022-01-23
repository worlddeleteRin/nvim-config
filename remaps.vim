nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>lua require('telescope.builtin').grep_string()<cr>

" make capital H and L to switch between tabs
nnoremap H gT
nnoremap L gt
" turn off search highlight
nnoremap ,<space> :nohlsearch<CR>
nnoremap <silent> <Leader>bd :Bclose<CR>
