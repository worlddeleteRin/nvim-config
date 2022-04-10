local ls = require("luasnip")

local s, i, t = ls.s, ls.insert_node, ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

local c = ls.choice_node

ls.snippets = {
  typescriptreact = {
    s(
      "cmnt",
      fmt(
        [[
          {}
        ]],
        {
          c(1, {
            t "{/* */}",
            t ""
          }),
        }
      )
    )
  },
  vue = {
    s(
      "todo",
      fmt(
        [[
          {}
        ]],
        {
          c(1, {
            t "// TODO",
            t ""
          }),
        }
      )
    )
  },
  python = {
    s(
      "todo",
      fmt(
        [[
          {}
        ]],
        {
            t "# TODO"
        }
      )
    )
  }
}

