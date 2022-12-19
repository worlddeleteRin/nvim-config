require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        -- disable = { "typescript" }
    },
    incremental_selection = {
        enable = false
    },
    indent = {
        enable = true
    },
}

--[[
Common installation
TSInstall vue typescript tsx javascript jsdoc lua rust json json5 css scss pug
--]]
