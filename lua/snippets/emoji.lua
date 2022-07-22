local ls = require("luasnip")

local s, i, t = ls.s, ls.insert_node, ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

local c = ls.choice_node

local emoji = {
  s("lint", fmt( [[ 🚨 ]], {})),
  s( "mob", fmt( [[ 📱 ]], { })),
  s( "typo", fmt( [[ ✏️ ]], { })),
  s( "cons", fmt( [[ 🚧 ]], { })),
  s( "lip", fmt( [[ 💄 ]], { })),
  s( "spar", fmt( [[ ✨ ]], { })),
}

return emoji
