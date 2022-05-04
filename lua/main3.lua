local ls = require("luasnip")

local s, i, t = ls.s, ls.insert_node, ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

local c = ls.choice_node

ls.add_snippets(nil, {
  all = {
    s(
      "cc",
      fmt(
        [[
          {}
        ]],
        {
            t "# "
        }
      )
    ),
  },
  typescript = {
    s(
      "cl",
      fmt(
        [[
          console.log('tst {1}')
        ]],
        {
          i(1, "")
        }
      )
    ),
  }
})

