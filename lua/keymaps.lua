vim.api.nvim_set_keymap(
  'n', '<M-h>', '<cmd>wincmd h<CR>', {silent= true}
)
vim.api.nvim_set_keymap(
  'n', '<M-l>', '<cmd>wincmd l<CR>', {silent= true}
)
vim.api.nvim_set_keymap(
  'n', '<M-j>', '<cmd>wincmd j<CR>', {silent= true}
)
vim.api.nvim_set_keymap(
  'n', '<M-k>', '<cmd>wincmd k<CR>', {silent= true}
)
vim.api.nvim_set_keymap('n', 'rn', '<cmd>lua RenameVar()<CR>', {})
