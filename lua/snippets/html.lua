local ls = require("luasnip")

local s, i, t = ls.s, ls.insert_node, ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

local c = ls.choice_node

local html = {
  s("div",
    fmt(
      [[
        <div>
          {1}
        </div>
      ]],
      { i(1, "") }
    )
  ),
  s("divc",
    fmt(
      [[
        <div class="{1}">
        </div>
      ]],
      { i(1, "") }
    )
  ),
  s("cc",
    fmt(
      [[ <!-- {1} --> ]],
      { i(1, "") }
    )
  ),
}

return html
