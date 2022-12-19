set clipboard+=unnamedplus
set encoding=utf-8 
set winbar=%=%m\ %f
set number
set noswapfile
set scrolloff=7
" set tabstop=3
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set nobackup
set incsearch
set cmdheight=1
" performance issues?
set updatetime=300
set fileformat=unix
set colorcolumn=80
" set rnu
" load filetype-specific indent files
filetype indent on      

" plugins
" source ~/.config/nvim/plugins.vim
" remaps file
source ~/.config/nvim/remaps.vim
" maps file
source ~/.config/nvim/maps.vim
" buffer :Bclose function
source ~/.config/nvim/buffer.vim

" autocmd
" source ~/.config/nvim/autocmd.vim

" Telescope set up
lua << EOF
-- autocmd init
require("plugins")
require("cmp-config-local")
require("lsp-config-local")
require("autocmd")
require("telescope-config")
require("color")
-- custom functions
require("custom-functions")
-- custom keymaps
require("keymaps")
-- snippets
require("snippets")
-- require("lualine-cfg")
require("lualine-evil-cfg")
require("indent-blankline")
require("treesitter")
-- TESTING
require("testing")
-- TESTING
EOF


" colorscheme
source ~/.config/nvim/colorscheme.vim

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
