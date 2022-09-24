
function RenameVar()
  local w = vim.fn.expand('<cword>')
  local r = vim.fn.input('From: ' .. w .. ' To: ')
  print(w, 'to', r)
  local command = '%s/' .. w .. '/' .. r .. '/g'
  vim.cmd(command)
end

vim.api.nvim_create_user_command('GP', 'Git pull', {})
vim.api.nvim_create_user_command('GG', 'Git push', {})
vim.api.nvim_create_user_command('GC', 'Git commit', {})
