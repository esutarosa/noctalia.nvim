local M = {}

---@class Noctalia.InternalConfig
local DEFAULT = {
	transparent = false,
	bold = true,
	italic = true,
	style = {
		boolean = "bold",
		number = "none",
		float = "none",
		error = "bold",
		comments = "italic",
		conditionals = "none",
		functions = "none",
		headings = "bold",
		operators = "none",
		strings = "italic",
		variables = "none",
		keywords = "none",
		keyword_return = "italic",
		keywords_loop = "none",
		keywords_label = "none",
		keywords_exception = "none",
		builtin_constants = "bold",
		builtin_functions = "none",
		builtin_types = "bold",
		builtin_variables = "none",
	},
	plugins = {
		cmp = {
			match = "bold",
			match_fuzzy = "bold",
		},
		dashboard = {
			footer = "italic",
		},
		lsp = {
			diagnostic_error = "bold",
			diagnostic_hint = "none",
			diagnostic_info = "italic",
			diagnostic_ok = "none",
			diagnostic_warn = "bold",
		},
		neotest = {
			focused = "bold",
			adapter_name = "bold",
		},
		telescope = {
			match = "bold",
		},
	},
	colors = {},
	on_highlights = function(_, _) end,
}

M._DEFAULT = DEFAULT
M.current = vim.deepcopy(DEFAULT)

local opts = type(vim.g.noctalia) == "function" and vim.g.noctalia() or vim.g.noctalia or {}
function M.set(user)
	M.current = vim.tbl_deep_extend("force", M.current, user or opts)
end

return M
