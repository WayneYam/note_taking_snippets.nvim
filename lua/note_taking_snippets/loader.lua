local ls = require("luasnip") -- {{{
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key -- }}}

return {
	setup = function(InMath, snippets, filetype)
		local getContext = function(snip)
			local context = {}

			context.condition = require("luasnip.extras.conditions").make_condition(function()
				return true
			end)

			context.trig = snip.trigger
			context.hidden = true
			if snip.priority then
				context.priority = 1000 + snip.priority
			end
			if string.find(snip.options, "A") then
				context.snippetType = "autosnippet"
			end
			if string.find(snip.options, "t") then
				context.condition = context.condition
					* require("luasnip.extras.conditions").make_condition(function()
						return not InMath()
					end)
			end
			if string.find(snip.options, "m") then
				context.condition = context.condition * require("luasnip.extras.conditions").make_condition(InMath)
			end
			if string.find(snip.options, "r") then
				context.regTrig = true
				context.trigEngine = "pattern"
			end
			if string.find(snip.options, "w") == nil then
				context.wordTrig = false
			end
			if string.find(snip.options, "v") then
				context.condition = conds.has_selected_text
			end
			return context
		end

		local getNode = function(snip)
			local str = snip.replacement
			str = string.gsub(str, "$(%d+)", "${%1:}")
			local nodes = {}

			local make_insert_node = function(w, w2)
				local num = tonumber(w) + 1
				nodes["inode" .. w] = i(num, w2)
				return "<inode" .. w .. ">"
			end
			local make_function_node = function(w)
				local num = tonumber(w) + 1
				nodes["fnode" .. w] = f(function(_, sni)
					return sni.captures[num]
				end, {})
				return "<fnode" .. w .. ">"
			end
			local make_selection_node = function(_)
				nodes["snode1"] = f(function(_, sni)
					local res, env = {}, sni.env
					for _, ele in ipairs(env.LS_SELECT_RAW) do
						table.insert(res, ele)
					end
					return res
				end, {})
				return "<snode1>"
			end
			str = string.gsub(str, "${VISUAL}", make_selection_node)
			str = string.gsub(str, "%[%[(%d+)%]%]", make_function_node)
			str = string.gsub(str, "${(%d+):(.-)}", make_insert_node)
			str = string.gsub(str, "{", "{{")
			str = string.gsub(str, "}", "}}")
			str = string.gsub(str, "<(.node%d+)>", "{%1}")
			return fmt(str, nodes, { repeat_duplicates = true })
		end

		local process_snippets = function()
			local ret = {}
			for _, snip in pairs(snippets) do
				local context = getContext(snip)
				local nodes = getNode(snip)
				table.insert(ret, s(context, nodes))
			end
			return ret
		end

		ls.config.setup({ enable_autosnippets = true, store_selection_keys = "<Tab>" })
		ls.add_snippets(filetype, process_snippets())
	end,
}
