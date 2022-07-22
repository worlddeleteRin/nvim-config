local ls = require("luasnip")

-- local s, i, t = ls.s, ls.insert_node, ls.text_node
-- local fmt = require("luasnip.extras.fmt").fmt
-- local c = ls.choice_node

local all = require 'snippets.all'
local css = require 'snippets.css'
local js = require 'snippets.js_ts'
local emoji = require 'snippets.emoji'
local html = require 'snippets.html'

-- local u = unpack
--
-- TODO FIXME refactor needed to make table / parsing it
--
ls.add_snippets('all', all)
ls.add_snippets('all', emoji)

ls.add_snippets('js', js.js_all)
ls.add_snippets('js', js.js)
ls.add_snippets('js', css)

ls.add_snippets('typescript', js.js_all)
ls.add_snippets('typescript', js.js)
ls.add_snippets('typescript', css)

ls.add_snippets('vue', js.js_all)
ls.add_snippets('vue', css)
ls.add_snippets('vue', js.js)

ls.add_snippets('css', css)

ls.add_snippets('html', html)
