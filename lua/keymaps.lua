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
