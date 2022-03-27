set encoding=utf-8
set number
set noswapfile
set scrolloff=7
" set tabstop=3
" set softtabstop=4
" set shiftwidth=4
set expandtab
set autoindent
set nobackup
set incsearch
set cmdheight=1
" performance issues?
set updatetime=50
set fileformat=unix
set colorcolumn=80
" load filetype-specific indent files
filetype indent on      

" plugins
source ~/.config/nvim/plugins.vim
" remaps file
source ~/.config/nvim/remaps.vim
" maps file
source ~/.config/nvim/maps.vim
" buffer :Bclose function
source ~/.config/nvim/buffer.vim
" colorscheme
source ~/.config/nvim/colorscheme.vim
" autocmd
" source ~/.config/nvim/autocmd.vim

" Telescope set up
lua require("telescope-config")
lua << EOF
-- autocmd init
require("autocmd")
require("l-config")
require("l-lspconfig")
-- require("lualine-cfg")
require("lualine-evil-cfg")
-- TESTING
require("main3")
EOF

" Display an error message.
function! s:Warn(msg)
  echohl ErrorMsg
  echomsg a:msg
  echohl NONE
endfunction

" enable indent support
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
