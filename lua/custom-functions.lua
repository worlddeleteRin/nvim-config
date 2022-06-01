
function RenameVar()
  local w = vim.fn.expand('<cword>')
  local r = vim.fn.input('From: ' .. w .. ' To: ')
  print(w, 'to', r)
  local command = '%s/' .. w .. '/' .. r .. '/g'
  vim.cmd(command)
end
