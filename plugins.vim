call plug#begin('~/.vim/plugged')

" git lines
Plug 'airblade/vim-gitgutter'
" pug support
Plug 'digitaltoad/vim-pug'
" vue components highlight support
Plug 'posva/vim-vue'
" git plugins
Plug 'tpope/vim-fugitive'
" eof git plugins
Plug 'norcalli/nvim-colorizer.lua'
Plug 'sharkdp/fd'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
" testing lsp installer
" Plug 'williamboman/nvim-lsp-installer'
" eof testin
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

" color schemas
Plug 'morhetz/gruvbox'  " colorscheme gruvbox
" Plug 'mhartington/oceanic-next'  " colorscheme OceanicNext
" kPlug 'kaicataldo/material.vim', { 'branch': 'main' }
" Plug 'ayu-theme/ayu-vim'

" For JS/JSX
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" indentation support
        
Plug 'nathanaelkane/vim-indent-guides'

call plug#end()
