require'nvim-treesitter.configs'.setup {
    ensure_installed = { "lua", "vim", "help", "javascript", "typescript", "tsx", "vue", "pug", "rust", "html", "python", "yaml", "markdown", "json", "css", "scss" },
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

require'treesitter-context'.setup {}

--[[
Common installation
TSInstall vue typescript tsx javascript jsdoc lua rust json json5 css scss pug
--]]
