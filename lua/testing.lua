
function CustomSelect()
    print('Working')
    local r = vim.region(
        0, {0,0}, {100,100}, 'v', true
    )
    for i, item in ipairs(r) do
        print(i)
        print(item)
    end
    -- print(r)
end


vim.api.nvim_set_keymap(
    'v', 'tr',
    '<cmd>lua CustomSelect()<CR>',
    {noremap = true}
)
