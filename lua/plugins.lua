return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'airblade/vim-gitgutter'

    use 'tpope/vim-fugitive'
    use 'sharkdp/fd'
    -- We recommend updating the parsers on update
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'


    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'


    -- UNDER TEST
    -- use 'vim-pandoc/vim-pandoc'
    use 'ayu-theme/ayu-vim'
    -- use 'calviken/vim-gdscript3'
    use 'hrsh7th/cmp-emoji'

    use 'lukas-reineke/indent-blankline.nvim'


end)
