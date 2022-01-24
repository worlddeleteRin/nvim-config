nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>lua require('telescope.builtin').grep_string()<cr>

" make capital H and L to switch between tabs
nnoremap H gT
nnoremap L gt
" turn off search highlight
nnoremap ,<space> :nohlsearch<CR>
nnoremap <silent> <Leader>bd :Bclose<CR>

" Keeping centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
