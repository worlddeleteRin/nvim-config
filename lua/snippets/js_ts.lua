local ls = require("luasnip")

local s, i, t = ls.s, ls.insert_node, ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

local c = ls.choice_node

local js_all = {
    s("clg",
      fmt(
        [[console.log('tst', {1})]],
        { i(1, "") }
      )
    ),
    s("tr", fmt(
        [[this.$tc("{1}")]],
        { i(1, "") }
    )),
}

local js = {
    s("td",
      fmt(
        [[// TODO {1}]],
        { i(1, "") }
      )
    ),
}

return {
  js_all = js_all,
  js = js
}
