local ls = require("luasnip")

local s, i, t = ls.s, ls.insert_node, ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

local c = ls.choice_node

local css = {
    s("mmb",
      fmt(
        [[
          @media(max-width: 768px) {{
            {1}
          }}
        ]],
        {i(1, "")}
      )
    ),
    s("bgr",
      fmt(
        [[ background-color: red;]],
        {}
      )
    ),
    s("bg",
      fmt(
        [[ background-color: {1};]],
        { i(1, "") }
      )
    ),
    s("df",
      fmt(
        [[ display: flex;]],
        {}
      )
    ),
}
return css
