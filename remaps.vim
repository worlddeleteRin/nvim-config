nnoremap ff <cmd>Telescope find_files<cr>
nnoremap FF <cmd>Telescope<cr>
nnoremap fg <cmd>lua require('telescope.builtin').grep_string()<cr>

" make capital H and L to switch between tabs
nnoremap L gt
" turn off search highlight
nnoremap ,<space> :nohlsearch<CR>
nnoremap <silent> <Leader>bd :Bclose<CR>

" Keeping centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

" nnoremap <silent> <c-q> :call ToggleQuickFix()<cr>
nnoremap <c-h> :cnext<cr>
nnoremap <c-l> :cprev<cr>

inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
