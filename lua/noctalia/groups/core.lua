local util = require("noctalia.util")
local cfg = require("noctalia.config.internal")

---@param p Noctalia.Palette
---@return table<string, vim.api.keyset.highlight>
return function(p)
	local s = cfg.current.style
	local t = cfg.current.transparent
	local bg = t and "NONE" or p.mSurface
	local panel = t and "NONE" or p.mSurfaceVariant

	return {
		-- base
		Normal = { fg = p.mOnSurface, bg = bg },
		NormalNC = { fg = p.mOnSurface, bg = bg },
		LineNr = { fg = p.mOnSurfaceVariant, bg = bg },
		CursorLine = { bg = panel },
		CursorColumn = { bg = panel },
		CursorLineNr = util.h("bold", p.mPrimary),
		SignColumn = { bg = bg },
		VertSplit = { fg = p.mOutline, bg = bg },

		NormalFloat = { fg = p.mOnSurface, bg = panel },
		FloatBorder = { fg = p.mOutline, bg = panel },
		WinSeparator = { fg = p.mOutline },

		Visual = { bg = panel },
		Search = { fg = p.mShadow, bg = p.mOnSurface },
		IncSearch = { fg = p.mShadow, bg = p.mPrimary },
		MatchParen = util.h("bold", p.mSecondary),

		Comment = util.h(s.comments, p.mOnSurfaceVariant),
		String = util.h(s.strings, p.mTertiary),
		Number = util.h(s.number, p.mSecondary),
		Boolean = util.h(s.boolean, p.mSecondary),
		Constant = { fg = p.mSecondary },
		Identifier = util.h(s.variables, p.mOnSurface),
		Function = util.h(s.functions, p.mSecondary),
		Statement = util.h(s.keywords, p.mOnSurface),
		Keyword = util.h(s.keywords, p.mOnSurface),
		Operator = util.h(s.operators, p.mOnSurface),
		Type = util.h(s.builtin_types, p.mTertiary),
		Error = util.h(s.error, p.mError),

		Pmenu = { fg = p.mOnSurface, bg = panel },
		PmenuSel = { fg = p.mShadow, bg = p.mSecondary },
		PmenuSbar = { bg = panel },
		PmenuThumb = { bg = p.mOutline },

		StatusLine = { fg = p.mOnSurface, bg = panel },
		StatusLineNC = { fg = p.mOnSurfaceVariant, bg = panel },

		DiffAdd = { bg = "#0d231d" },
		DiffChange = { bg = "#15182b" },
		DiffDelete = { bg = "#2b151d" },
		DiffText = util.h("bold", nil, "#2a3352"),

		DiagnosticError = { fg = p.mError },
		DiagnosticWarn = { fg = p.mPrimary },
		DiagnosticInfo = { fg = p.mSecondary },
		DiagnosticHint = { fg = p.mOnSurfaceVariant },
	}
end
