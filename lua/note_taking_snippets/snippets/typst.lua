return {
	InMath = function()
		local leaf_node = vim.treesitter.get_node()
		if leaf_node == nil or leaf_node:type() == "string" then
			return false
		end

		local root_node = leaf_node:tree():root()
		if root_node == nil then
			return false
		end

		while leaf_node ~= nil and not leaf_node:equal(root_node) do
			if leaf_node:type() == "code" then
				return false
			elseif leaf_node:type() == "math" then
				return true
			end
			leaf_node = leaf_node:parent()
		end
		return false
	end,
	snippets = {
		-- Math Mode
		{
			trigger = "mk",
			replacement = "$$0$",
			options = "tAw",
		},
		{
			trigger = "dm",
			replacement = "$ $0 $",
			options = "tAw",
		},

		-- Operations
		{
			trigger = "sr",
			replacement = "^2",
			options = "mA",
		},
		{
			trigger = "cb",
			replacement = "^3",
			options = "mA",
		},
		{
			trigger = "rd",
			replacement = "^($0)",
			options = "mA",
		},
		{
			trigger = "sts",
			replacement = '_("$0")',
			options = "mA",
		},

		-- fontstyle
		{
			trigger = "([a-zA-Z]),%.",
			replacement = "bold([[0]])",
			options = "rmA",
		},

		-- subscript
		{
			trigger = "([A-Za-z])(%d)",
			replacement = "[[0]]_[[1]]",
			options = "rmA",
			description = "Auto letter subscript",
			priority = -1,
		},

		-- Visual Operations
		{
			trigger = "U",
			replacement = "underbrace(${VISUAL}, $0)",
			options = "vmA",
		},
		{
			trigger = "C",
			replacement = "cancel(${VISUAL})",
			options = "vmA",
		},
		{
			trigger = " ",
			replacement = "$0(${VISUAL})",
			options = "vmA",
		},
		{
			trigger = ",",
			replacement = "$0(${VISUAL}, $1)",
			options = "vmA",
		},
	},
}
