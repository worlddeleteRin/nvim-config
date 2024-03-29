local defaultIndent = 2
local currentJsIndent = 4

local set = vim.opt

--[[
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "*"
  },
  callback = function()
    set.tabstop = defaultIndent
    set.softtabstop = defaultIndent
    set.shiftwidth = defaultIndent
  end,
})
--]]
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "python","*gd"
  },
  callback = function()
    set.tabstop = 4
    set.softtabstop = 4
    set.shiftwidth = 4
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "vue","ts","js", "tsx", "ts*", "javascript",
    "typescript","json"
  },
  callback = function()
    set.tabstop = currentJsIndent
    set.softtabstop = currentJsIndent
    set.shiftwidth = currentJsIndent
  end,
})
