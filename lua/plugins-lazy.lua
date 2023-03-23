vim.opt.rtp:prepend("/home/rin/.local/share/nvim/lazy/lazy.nvim")
-- example using a list of specs with the default options
vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
    'wbthomason/packer.nvim',

    'airblade/vim-gitgutter',

    { 'tpope/vim-fugitive' },
    'sharkdp/fd',

    -- We recommend updating the parsers on update
    {'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate' },
    'nvim-treesitter/nvim-treesitter-context',

    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-fzy-native.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
    'nvim-telescope/telescope-project.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'saadparwaiz1/cmp_luasnip',
    'L3MON4D3/LuaSnip',

    'nvim-lualine/lualine.nvim',
    'kyazdani42/nvim-web-devicons',

    -- 'mbbill/undotree',

    -- UNDER TEST
    'nvim-lua/lsp-status.nvim',

    -- LSP progress status
    'j-hui/fidget.nvim',
    -- 'vim-pandoc/vim-pandoc'
    -- 'ayu-theme/ayu-vim'
    -- 'folke/tokyonight.nvim',
    { 'rose-pine/neovim', name = 'rose-pine' },
    -- { 'rebelot/kanagawa.nvim' },
    -- 'calviken/vim-gdscript3'
    'hrsh7th/cmp-emoji',

    'lukas-reineke/indent-blankline.nvim'
})
