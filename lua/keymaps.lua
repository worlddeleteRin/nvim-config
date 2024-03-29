-- move windowm maps
vim.api.nvim_set_keymap( 'n', '<M-h>', '<cmd>wincmd h<CR>', {silent= true})
vim.api.nvim_set_keymap( 'n', '<M-l>', '<cmd>wincmd l<CR>', {silent= true})
vim.api.nvim_set_keymap( 'n', '<M-j>', '<cmd>wincmd j<CR>', {silent= true})
vim.api.nvim_set_keymap( 'n', '<M-k>', '<cmd>wincmd k<CR>', {silent= true})

-- move cursor in insert mode
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', {silent=true})
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', {silent=true})
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', {silent=true})
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', {silent=true})

-- call local rename var function
vim.api.nvim_set_keymap('n', 'rn', '<cmd>lua RenameVar()<CR>', {})

-- telescope
vim.api.nvim_set_keymap('n', 'gs', '<cmd>Telescope lsp_document_symbols<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'fs', '<cmd>Telescope grep_string<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'fd', '<cmd>Telescope diagnostics<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'ff', '<cmd>Telescope current_buffer_fuzzy_find<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'fp',
    -- '<cmd>Telescope current_buffer_fuzzy_find<CR>',
    ":lua require'telescope'.extensions.project.project{}<CR>",
    { noremap = true, silent = true })

-- undotree
vim.api.nvim_set_keymap('n', '<leader>u', '<cmd>UndotreeToggle<CR>', { noremap = true })

-- git
vim.api.nvim_set_keymap('n', 'gl', '<cmd>GLS<CR>', { noremap = true })
