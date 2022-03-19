local ls = require("luasnip")

local s, i, t = ls.s, ls.insert_node, ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

local c = ls.choiceNode

ls.snippets = {
  python = {
    s(
      "todo",
      fmt(
        [[
        ]],
        {
          c(1, { t "# TODO: some text here " }),
          i(0),
        }
      )
    )
  }
}
