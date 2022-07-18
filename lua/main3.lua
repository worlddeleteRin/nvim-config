local ls = require("luasnip")

local s, i, t = ls.s, ls.insert_node, ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

local c = ls.choice_node

ls.add_snippets(nil, {
  all = {
    s(
      "mmb",
      fmt(
        [[
          @media(max-width: 768px) {{
            {1}
          }}
        ]],
        {i(1, "")}
      )
    ),
    s(
      "lint",
      fmt(
        [[
          🚨
        ]],
        {}
      )
    ),
    s(
      "mob",
      fmt(
        [[
          📱
        ]],
        {
        }
      )
    ),
    s(
      "typo",
      fmt(
        [[
          ✏️
        ]],
        {
        }
      )
    ),
    s(
      "cons",
      fmt(
        [[
          🚧
        ]],
        {
        }
      )
    ),
    s(
      "lip",
      fmt(
        [[
          💄
        ]],
        {
        }
      )
    ),
    s(
      "spar",
      fmt(
        [[
          ✨
        ]],
        {
        }
      )
    ),
    s(
      "clg",
      fmt(
        [[
          console.log(`tst {1}`)
        ]],
        {
          i(1, "")
        }
      )
    ),
    s(
      "div",
      fmt(
        [[
          <div>
            {1}
          </div>
        ]],
        {
          i(1, "")
        }
      )
    ),
    s(
      "divc",
      fmt(
        [[
          <div class="{1}">
          </div>
        ]],
        {
          i(1, "")
        }
      )
    ),
    s(
      "cc",
      fmt(
        [[
          <!-- {1} -->
        ]],
        {
          i(1, "")
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
  },
  vue = {
    s(
      "bgr",
      fmt(
        [[
          background-color: red;
        ]],
        {}
      )
    ),
    s(
      "bg",
      fmt(
        [[
          background-color: {1};
        ]],
        {
          i(1, "")
        }
      )
    ),
    s(
      "df",
      fmt(
        [[
          display: flex;
        ]],
        {}
      )
    ),
  }
})

