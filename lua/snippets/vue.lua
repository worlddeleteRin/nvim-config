local ls = require("luasnip")

local s, i, t = ls.s, ls.insert_node, ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

local c = ls.choice_node

local vue = {
    s("tc", fmt(
        [[this.$t("{1}")]],
        { i(1, "") }
    )),
    s("tch", fmt(
[[{{{{ $t("{1}") }}}}]],
        { i(1, "") }
    )),
}

return vue
