local util = require("noctalia.util")
local cfg = require("noctalia.config.internal")

---@param p Noctalia.Palette
---@return table<string, vim.api.keyset.highlight>
return function(p)
	local s = cfg.current.style
	local t = cfg.current.transparent
	local bg = t and "NONE" or p.mSurface

	return {
		Normal = { fg = p.mOnSurface, bg = bg },
		NormalFloat = { fg = p.mOnSurface, bg = t and "NONE" or p.mSurfaceVariant },
		FloatBorder = { fg = p.mOutline, bg = t and "NONE" or p.mSurfaceVariant },

		CursorLine = { bg = p.mSurfaceVariant },
		CursorColumn = { bg = p.mSurfaceVariant },
		ColorColumn = { bg = p.mSurfaceVariant },
		CursorLineNr = util.h("bold", p.mPrimary),

		LineNr = { fg = p.mOnSurfaceVariant },
		SignColumn = { bg = bg },
		VertSplit = { fg = p.mOutline, bg = bg },

		Search = { fg = p.mShadow, bg = p.mOnSurface },
		IncSearch = { fg = p.mShadow, bg = p.mPrimary },
		Visual = { bg = p.mSurfaceVariant },
		MatchParen = util.h("bold", p.mPrimary),

		Comment = util.h(s.comments, p.mOnSurfaceVariant),
		String = util.h(s.strings, p.mTertiary),
		Number = util.h(s.number, p.mPrimary),
		Boolean = util.h(s.boolean, p.mPrimary),
		Constant = { fg = p.mSecondary },
		Identifier = util.h(s.variables, p.mOnSurface),
		Function = util.h(s.functions, p.mSecondary),
		Statement = util.h(s.keywords, p.mOnSurface),
		Keyword = util.h(s.keywords, p.mOnSurface),
		Operator = util.h(s.operators, p.mOnSurface),
		Type = util.h(s.builtin_types, p.mTertiary),
		Error = util.h(s.error, p.mError),

		Pmenu = { fg = p.mOnSurface, bg = p.mSurfaceVariant },
		PmenuSel = { fg = p.mShadow, bg = p.mPrimary },
		PmenuSbar = { bg = p.mSurfaceVariant },
		PmenuThumb = { bg = p.mOutline },

		StatusLine = { fg = p.mOnSurface, bg = p.mSurfaceVariant },
		StatusLineNC = { fg = p.mOnSurfaceVariant, bg = p.mSurfaceVariant },

		DiffAdd = { bg = "#20331f" },
		DiffChange = { bg = "#2b2f44" },
		DiffDelete = { bg = "#3a1f2b" },
		DiffText = util.h("bold", nil, "#39446b"),

		DiagnosticError = { fg = p.mError },
		DiagnosticWarn = { fg = "#f3be7c" },
		DiagnosticInfo = { fg = p.mSecondary },
		DiagnosticHint = { fg = p.mOnSurfaceVariant },
	}
end
